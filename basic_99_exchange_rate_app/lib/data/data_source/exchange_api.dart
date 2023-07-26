import 'dart:convert';

import 'package:basic_99_exchange/data/dto/exchange_dto_result.dart';
import 'package:http/http.dart' as http;

class ExchangeApi {
  final _myKey = '92a988fbb98c42759b74153d';

  Future<ExchangeDtoResult> getExchangeDto(String baseCode) async {
    final url = 'https://v6.exchangerate-api.com/v6/$_myKey/latest/$baseCode';

    final response = await http.get(Uri.parse(url));
    final jsonMap = jsonDecode(response.body);

    return ExchangeDtoResult.fromJson(jsonMap);
  }
}
