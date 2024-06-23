import 'package:injectable/injectable.dart';
import 'package:showlover/src/features/features.dart';

@Injectable(as: EpisodesRepository)
class EpisodesRepositoryImpl implements EpisodesRepository {
  final EpisodesDataSource _episodesDataSource;

  EpisodesRepositoryImpl(this._episodesDataSource);

  @override
  Future<GetEpisodesResult> getEpisodes(int showId) async {
    return _episodesDataSource.getEpisodes(showId);
  }
}
