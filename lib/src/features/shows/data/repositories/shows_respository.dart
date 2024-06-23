import 'package:injectable/injectable.dart';

import '../../shows.dart';

@Injectable(as: ShowsRepository)
class ShowsRespositoryImpl implements ShowsRepository {
  final ShowsDataSource _showsDataSource;

  ShowsRespositoryImpl(this._showsDataSource);

  @override
  Future<GetShowsResult> getShows(int page) {
    return _showsDataSource.getShows(page);
  }

  @override
  Future<GetShowsByNameResult> getShowsByName(String showName) {
    return _showsDataSource.getShowsByName(showName);
  }
}
