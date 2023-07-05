import 'package:basic_99_pixabay_clean/data/dto/pixabay_result_dto.dart';

import '../../domain/model/photo.dart';

extension ToPhoto on Hits {
  Photo toPhoto() {
    return Photo(
      id: id ?? 0,
      views: views ?? 0,
      url: webformatURL ?? '',
    );
  }
}
