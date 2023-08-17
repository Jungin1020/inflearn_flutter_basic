import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/photo.dart';

class PhotoApi {
  final _myKey = '37903563-6461cb0081fd824b159c4d78b&q';

  Future<List<Photo>> getPhotos(String q) async {
    // await Future.delayed(const Duration(seconds: 3));

    final response = await http.get(Uri.parse(
        'https://pixabay.com/api/?key=$_myKey&q=$q&image_type=photo'));

    Iterable jsonArray = jsonDecode((response.body))['hits'];
    // 이 부분이 맞나요??

    return jsonArray.map((e) => Photo.fromJson(e)).toList();
  }
}
