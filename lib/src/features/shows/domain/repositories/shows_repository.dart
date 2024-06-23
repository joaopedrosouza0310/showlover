import '../../shows.dart';

abstract interface class ShowsRepository {
  Future<GetShowsResult> getShows(int page);
}
