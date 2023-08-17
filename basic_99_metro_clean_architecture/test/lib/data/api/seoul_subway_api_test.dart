import 'package:basic_99_metro_clean_architecture/data/api/seoul_subway_api.dart';
import 'package:basic_99_metro_clean_architecture/data/dto/subway_result_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Seoul Subway Api Test', () async {
    final api = SeoulSubwayApi();

    SubwayResultDto dto = await api.getSubway('서울');

    expect(dto.errorMessage!.total, 24);
  });
}
