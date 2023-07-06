import 'package:basic_99_pixabay_clean/core/result.dart';
import 'package:basic_99_pixabay_clean/data/api/pixabay_api.dart';
import 'package:basic_99_pixabay_clean/data/mapper/pixabay_mapper.dart';
import 'package:basic_99_pixabay_clean/domain/model/photo.dart';
import 'package:basic_99_pixabay_clean/domain/repository/photo_repository.dart';

class PixabayPhotoRepositoryImpl implements PhotoRepository {
  final _api = PixabayApi();

  @override
  Future<Result<List<Photo>>> getPhotos(String query) async {
    try {
      final dto = await _api.getPhotoResult(query);

      if (dto.hits == null) {
        return const Result.error('데이터가 없습니다.');
        // 이부분 애매함
      }

      return Result.success(dto.hits!.map((e) => e.toPhoto()).toList());
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
  }
}
