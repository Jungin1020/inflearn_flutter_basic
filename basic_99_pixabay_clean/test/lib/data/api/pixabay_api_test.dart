import 'package:basic_99_pixabay_clean/data/api/pixabay_api.dart';
import 'package:basic_99_pixabay_clean/data/dto/pixabay_result_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Pixabay Api Test', () async {
    final api = PixabayApi();
    PixabayResultDto result = await api.getPhotoResult('rabbit');
    expect(result.total, 2493);
  });
}
