import '../model/photo.dart';
import '../repository/photo_repository.dart';

class GetTopFiveMostViewedUseCase {
  final PhotoRepository _repository;
  GetTopFiveMostViewedUseCase(this._repository);

  Future<List<Photo>> execute(String query) async {
    return await _repository.getPhotos(query);
  }
}
