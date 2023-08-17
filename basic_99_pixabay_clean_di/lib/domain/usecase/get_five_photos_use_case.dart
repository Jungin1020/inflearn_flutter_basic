import 'package:basic_99_pixabay_clean_di/core/result.dart';
import 'package:injectable/injectable.dart';

import '../model/photo.dart';
import '../repository/photo_repository.dart';

@singleton
class GetFivePhotosUseCase {
  final PhotoRepository _repository;
  GetFivePhotosUseCase(this._repository);

  Future<Result<List<Photo>>> execute(String query) async {
    try {
      final photos = await _repository.getPhotos(query);

      return Result.success(photos.take(5).toList());
    } catch (e) {
      return const Result.error('네트워크에러');
    }
  }
}
