import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:showlover/src/features/shows/shows.dart';

import '../../../../core/core.dart';

abstract interface class ShowsDataSource {
  Future<GetShowsResult> getShows(int page);
  Future<GetShowsByNameResult> getShowsByName(String showName);
}

typedef GetShowsResult = ({
  RequestErrorResult? errorType,
  List<ShowModel>? shows,
});

typedef GetShowsByNameResult = ({
  RequestErrorResult? errorType,
  List<ShowModel>? shows,
  ShowModel? show,
});

@Injectable(as: ShowsDataSource)
class ShowsDataSourceImpl implements ShowsDataSource {
  final HttpClient _httpClient;
  final DefaultLogger _logger;

  ShowsDataSourceImpl(this._httpClient, this._logger);

  @override
  Future<GetShowsResult> getShows(int page) async {
    return errorsWrapper<List<ShowModel>, GetShowsResult>(
      request: () async {
        final response = await _httpClient.get(Endpoints.shows(page));
        if (response.statusCode == HttpStatus.ok) {
          final List<dynamic> jsonList = response.data;
          return jsonList.map((json) => ShowModel.fromJson(json)).toList();
        }

        throw RequestErrorResult.unableToRetrieveData;
      },
      onSuccess: (shows) => (shows: shows, errorType: null),
      onError: (error) => (shows: null, errorType: error),
      logger: _logger,
    );
  }

  @override
  Future<GetShowsByNameResult> getShowsByName(String showName) async {
    return errorsWrapper<({List<ShowModel>? shows, ShowModel? show}),
        GetShowsByNameResult>(
      request: () async {
        final response = await _httpClient.get(Endpoints.showByName(showName));
        if (response.statusCode == HttpStatus.ok) {
          final jsonData = response.data;

          if (jsonData is List) {
            final data =
                jsonData.map((json) => ShowModel.fromJson(json)).toList();
            return (shows: data, show: null);
          } else {
            final data = ShowModel.fromJson(jsonData);
            return (shows: null, show: data);
          }
        }

        throw RequestErrorResult.unableToRetrieveData;
      },
      onSuccess: (showsResult) {
        final (:show, :shows) = showsResult;

        return (shows: shows, show: show, errorType: null);
      },
      onError: (error) => (shows: null, show: null, errorType: error),
      logger: _logger,
    );
  }
}
