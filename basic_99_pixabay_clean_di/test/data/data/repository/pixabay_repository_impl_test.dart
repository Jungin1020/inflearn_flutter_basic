import 'package:basic_99_pixabay_clean_di/core/di/di_setup.dart';
import 'package:basic_99_pixabay_clean_di/data/repository/pixabay_repository_impl.dart';
import 'package:basic_99_pixabay_clean_di/domain/repository/photo_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  test('Photo가 잘 들어오는지 확인', () async {
    configureDependencies();

    final repository = getIt<PhotoRepository>();

    final photos = await repository.getPhotos('banana');

    expect(photos[0].id, 673697);
  });
}
