import 'package:basic_99_metro_clean_architecture/domain/repository/subway_repository.dart';

import '../model/subway.dart';

class GetTwoClosestSubwaysUseCase {
  final SubwayRepository _repository;
  GetTwoClosestSubwaysUseCase(this._repository);

  Future<List<Subway>> execute(String query) async {
    final subways = await _repository.getSubways(query);
    return subways;
  }
}
