import 'dart:io';

import 'package:injectable/injectable.dart';

import '../../../../core/core.dart';
import '../../../features.dart';

abstract interface class SeasonsDataSource {
  Future<GetSeasonsResult> getSeasons(int showId);
}

typedef GetSeasonsResult = ({
  RequestErrorResult? errorType,
  List<SeasonModel>? seasons,
});

@Injectable(as: SeasonsDataSource)
class SeasonsDataSourceImpl implements SeasonsDataSource {
  final HttpClient _httpClient;
  final DefaultLogger _logger;

  SeasonsDataSourceImpl(this._httpClient, this._logger);

  @override
  Future<GetSeasonsResult> getSeasons(int showId) async {
    return errorsWrapper<List<SeasonModel>, GetSeasonsResult>(
      request: () async {
        final response = await _httpClient.get(Endpoints.seasons(showId));
        if (response.statusCode == HttpStatus.ok) {
          final List<dynamic> jsonList = response.data;
          return jsonList.map((json) => SeasonModel.fromJson(json)).toList();
        }

        throw RequestErrorResult.unableToRetrieveData;
      },
      onSuccess: (seasons) => (seasons: seasons, errorType: null),
      onError: (error) => (seasons: null, errorType: error),
      logger: _logger,
    );
  }
}
