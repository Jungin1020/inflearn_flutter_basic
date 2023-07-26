import 'package:basic_99_pixabay_clean_di/data/repository/pixabay_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final repository = PixabayRepositoryImpl();
  test('Photo가 잘 들어오는지 확인', () async {
    final photos = await repository.getPhotos('panda');

    expect(photos[0].id, 1236875);
  });
}
