import 'package:injectable/injectable.dart';
import 'package:showlover/src/features/features.dart';

@Injectable(as: SeasonsRepository)
class SeasonsRepositoryImpl implements SeasonsRepository {
  final SeasonsDataSource _seasonsDataSource;

  SeasonsRepositoryImpl(this._seasonsDataSource);

  @override
  Future<GetSeasonsResult> getSeasons(int showId) async {
    return await _seasonsDataSource.getSeasons(showId);
  }
}
