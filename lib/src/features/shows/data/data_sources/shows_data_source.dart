import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:showlover/src/features/shows/shows.dart';

import '../../../../core/core.dart';

abstract interface class ShowsDataSource {
  Future<GetShowsResult> getShows(int page);
}

typedef GetShowsResult = ({
  RequestErrorResult? errorType,
  List<ShowModel>? shows,
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
}
