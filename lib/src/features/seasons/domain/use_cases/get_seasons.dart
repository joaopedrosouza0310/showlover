import 'package:injectable/injectable.dart';

import '../../../features.dart';

@injectable
class GetSeasons {
  final SeasonsRepository repository;

  GetSeasons(this.repository);

  Future<GetSeasonsResult> call(int showId) => repository.getSeasons(showId);
}
