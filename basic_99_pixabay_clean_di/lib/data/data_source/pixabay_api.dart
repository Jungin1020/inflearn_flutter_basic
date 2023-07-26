import 'dart:convert';

import '../dto/photo_result_dto.dart';
import 'package:http/http.dart' as http;

class PixabayApi {
  final _myKey = '37903563-6461cb0081fd824b159c4d78b';

  Future<PhotoResultDto> getPhotoResultDto(String query) async {
    final api =
        'https://pixabay.com/api/?key=$_myKey&q=$query&image_type=photo&pretty=true';
    final response = await http.get(Uri.parse(api));

    return PhotoResultDto.fromJson(jsonDecode(response.body));
  }
}
