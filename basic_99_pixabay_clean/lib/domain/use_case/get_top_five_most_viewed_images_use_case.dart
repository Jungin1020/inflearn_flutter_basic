import '../model/photo.dart';
import '../repository/photo_repository.dart';

class GetTopFiveMostViewedUseCase {
  final PhotoRepository _repository;
  GetTopFiveMostViewedUseCase(this._repository);

  Future<List<Photo>> execute(String query) async {
    final photos = await _repository.getPhotos(query);
    photos.sort((a, b) => b.views.compareTo(a.views));

    return photos.take(5).toList();
  }
}
