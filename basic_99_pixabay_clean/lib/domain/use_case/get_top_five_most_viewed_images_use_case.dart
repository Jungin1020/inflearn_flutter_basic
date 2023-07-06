import 'package:basic_99_pixabay_clean/core/result.dart';

import '../model/photo.dart';
import '../repository/photo_repository.dart';

class GetTopFiveMostViewedUseCase {
  final PhotoRepository _repository;

  GetTopFiveMostViewedUseCase(this._repository);

  Future<Result<List<Photo>>> execute(String query) async {
    try {
      final photos = await _repository.getPhotos(query);
      photos.sort((a, b) => b.views.compareTo(a.views));

      return Result.success(photos.take(5).toList());
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
  }
}
