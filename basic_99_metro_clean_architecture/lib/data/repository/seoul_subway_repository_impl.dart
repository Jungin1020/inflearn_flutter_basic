import 'package:basic_99_metro_clean_architecture/data/api/seoul_subway_api.dart';
import 'package:basic_99_metro_clean_architecture/data/mapper/subway_mapper.dart';
import 'package:basic_99_metro_clean_architecture/domain/model/subway.dart';
import 'package:basic_99_metro_clean_architecture/domain/repository/subway_repository.dart';

class SeoulSubwayRepositoryImpl implements SubwayRepository {
  final _api = SeoulSubwayApi();

  @override
  Future<List<Subway>> getSubways(String query) async {
    final dto = await _api.getSubway(query);

    if (dto.realtimeArrivalList == null) {
      return [];
    }

    return dto.realtimeArrivalList!.map((e) => e.toSubway()).toList();
  }
}
