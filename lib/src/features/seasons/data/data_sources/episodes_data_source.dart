import 'dart:io';

import 'package:injectable/injectable.dart';

import '../../../../core/core.dart';
import '../../../features.dart';

abstract interface class EpisodesDataSource {
  Future<GetEpisodesResult> getEpisodes(int showId);
}

typedef GetEpisodesResult = ({
  RequestErrorResult? errorType,
  List<EpisodeModel>? episodes,
});

@Injectable(as: EpisodesDataSource)
class EpisodesDataSourceImpl implements EpisodesDataSource {
  final HttpClient _httpClient;
  final DefaultLogger _logger;

  EpisodesDataSourceImpl(this._httpClient, this._logger);

  @override
  Future<GetEpisodesResult> getEpisodes(int showId) async {
    return errorsWrapper<List<EpisodeModel>, GetEpisodesResult>(
      request: () async {
        final response = await _httpClient.get(Endpoints.episodes(showId));
        if (response.statusCode == HttpStatus.ok) {
          final List<dynamic> jsonList = response.data;
          return jsonList.map((json) => EpisodeModel.fromJson(json)).toList();
        }

        throw RequestErrorResult.unableToRetrieveData;
      },
      onSuccess: (episodes) => (episodes: episodes, errorType: null),
      onError: (error) => (episodes: null, errorType: error),
      logger: _logger,
    );
  }
}
