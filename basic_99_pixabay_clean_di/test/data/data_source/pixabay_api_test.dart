import 'dart:math';

import 'package:basic_99_pixabay_clean_di/core/di/di_setup.dart';
import 'package:basic_99_pixabay_clean_di/data/data_source/pixabay_api.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('dto가 잘 만들어지는지 확인', () async {
    configureDependencies();

    final api = getIt<PixabayApi>();
    final dto = await api.getPhotoResultDto('banana');

    expect(dto.total, 1605);
  });
}
