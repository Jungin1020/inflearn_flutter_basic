import 'dart:convert';

import 'package:basic_99_metro_clean_architecture/data/dto/subway_result_dto.dart';
import 'package:http/http.dart' as http;

class SeoulSubwayApi {
  final _myKey = 'sample';

  Future<SubwayResultDto> getSubway(String query) async {
    final url =
        'http://swopenapi.seoul.go.kr/api/subway/$_myKey/json/realtimeStationArrival/0/5/$query';

    final response = await http.get(Uri.parse(url));

    return SubwayResultDto.fromJson(jsonDecode(response.body));
  }
}
