import 'package:showlover/src/features/seasons/data/data_sources/seasons_data_sources.dart';

abstract interface class SeasonsRepository {
  Future<GetSeasonsResult> getSeasons(int showId);
}
