import 'dart:math';

import 'package:basic_99_pixabay_clean_di/data/data_source/pixabay_api.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('dto가 잘 만들어지는지 확인', () async {
    final api = PixabayApi();
    final dto = await api.getPhotoResultDto('panda');

    expect(dto.total, 505);
  });
}
