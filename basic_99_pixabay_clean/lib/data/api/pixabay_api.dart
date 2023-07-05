import 'dart:convert';

import '../dto/pixabay_result_dto.dart';
import 'package:http/http.dart' as http;

class PixabayApi {
  final _myKey = "37903563-6461cb0081fd824b159c4d78b";

  Future<PixabayResultDto> getPhotoResult(String query) async {
    final url =
        "https://pixabay.com/api/?key=$_myKey&q=$query&image_type=photo&pretty=true";
    final response = await http.get(Uri.parse(url));
    Map<String, dynamic> jsonMap = jsonDecode(response.body);

    return PixabayResultDto.fromJson(jsonMap);
  }
}
