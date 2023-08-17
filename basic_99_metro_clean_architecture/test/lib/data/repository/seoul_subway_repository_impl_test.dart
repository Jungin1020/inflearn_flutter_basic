import 'package:basic_99_metro_clean_architecture/data/repository/seoul_subway_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Seoul Subway Repository Impl Test', () async {
    final repository = SeoulSubwayRepositoryImpl();

    final subways = await repository.getSubways('서울');

    expect(subways[0].trainStatus, '일반');
  });
}
