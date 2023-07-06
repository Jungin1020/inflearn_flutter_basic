import 'package:basic_99_pixabay_clean/data/api/pixabay_api.dart';
import 'package:basic_99_pixabay_clean/data/mapper/pixabay_mapper.dart';
import 'package:basic_99_pixabay_clean/domain/model/photo.dart';
import 'package:basic_99_pixabay_clean/domain/repository/photo_repository.dart';

class PixabayPhotoRepositoryImpl implements PhotoRepository {
  final _api = PixabayApi();

  @override
  Future<List<Photo>> getPhotos(String query) async {
    final dto = await _api.getPhotoResult(query);

    if (dto.hits == null) {
      return [];
    }

    return dto.hits!.map((e) => e.toPhoto()).toList();
  }
}
