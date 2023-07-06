import '../../core/result.dart';
import '../model/photo.dart';
import '../repository/photo_repository.dart';

class GetAllImagesUseCase {
  final PhotoRepository _repository;

  GetAllImagesUseCase(this._repository);

  Future<Result<List<Photo>>> execute(String query) async {
    final result = await _repository.getPhotos(query);

    switch (result) {
      case Success(:final data):
        return Result.success(data);

      case Error():
        return result;
    }
  }
}
