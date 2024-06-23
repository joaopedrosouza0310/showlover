import 'package:injectable/injectable.dart';

import '../../shows.dart';

@injectable
class GetShows {
  final ShowsRepository repository;

  GetShows(this.repository);

  Future<GetShowsResult> call(int page) => repository.getShows(page);
}
