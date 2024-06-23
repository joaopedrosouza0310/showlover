import 'package:injectable/injectable.dart';

import '../../shows.dart';

@injectable
class GetShowsByName {
  final ShowsRepository repository;

  GetShowsByName(this.repository);

  Future<GetShowsByNameResult> call(String showName) =>
      repository.getShowsByName(showName);
}
