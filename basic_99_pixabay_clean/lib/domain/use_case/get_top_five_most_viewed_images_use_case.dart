import 'package:basic_99_pixabay_clean/core/result.dart';

import '../model/photo.dart';
import '../repository/photo_repository.dart';

class GetTopFiveMostViewedUseCase {
  final PhotoRepository _repository;

  GetTopFiveMostViewedUseCase(this._repository);

  Future<Result<List<Photo>>> execute(String query) async {
    final result = await _repository.getPhotos(query);

    switch (result) {
      case Success(:final data):
        data.sort((a, b) => b.views.compareTo(a.views));
        return Result.success(data.take(5).toList());

      case Error():
        return result;
    }
  }
}
