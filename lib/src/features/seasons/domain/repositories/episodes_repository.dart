import 'package:showlover/src/features/seasons/data/data.dart';

abstract interface class EpisodesRepository {
  Future<GetEpisodesResult> getEpisodes(int showId);
}
