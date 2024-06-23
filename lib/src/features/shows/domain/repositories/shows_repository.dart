import '../../shows.dart';

abstract interface class ShowsRepository {
  Future<GetShowsResult> getShows(int page);
  Future<GetShowsByNameResult> getShowsByName(String showName);
}
