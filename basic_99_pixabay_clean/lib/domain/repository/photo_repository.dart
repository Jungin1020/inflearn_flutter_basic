import 'package:basic_99_pixabay_clean/core/result.dart';

import '../model/photo.dart';

abstract interface class PhotoRepository {
  Future<Result<List<Photo>>> getPhotos(String query);
}
