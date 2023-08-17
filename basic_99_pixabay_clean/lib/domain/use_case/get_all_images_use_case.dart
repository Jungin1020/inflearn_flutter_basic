import '../../core/result.dart';
import '../model/photo.dart';
import '../repository/photo_repository.dart';

class GetAllImagesUseCase {
  final PhotoRepository _repository;

  GetAllImagesUseCase(this._repository);

  Future<Result<List<Photo>>> execute(String query) async {
    try {
      final photos = await _repository.getPhotos(query);

      return Result.success(photos);
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
  }
}
