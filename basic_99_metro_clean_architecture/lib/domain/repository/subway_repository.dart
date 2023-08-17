import 'package:basic_99_metro_clean_architecture/domain/model/subway.dart';

abstract interface class SubwayRepository {
  Future<List<Subway>> getSubways(String query);
}
