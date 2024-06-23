import 'package:injectable/injectable.dart';

import '../../../features.dart';

@injectable
class GetEpisodes {
  final EpisodesRepository repository;

  GetEpisodes(this.repository);

  Future<GetEpisodesResult> call(int showId) => repository.getEpisodes(showId);
}
