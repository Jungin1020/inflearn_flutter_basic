import 'package:basic_99_exchange/data/data_source/exchange_api.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('api에서 데이터가 잘 들어오는지 확인', () async {
    final api = ExchangeApi();
    final result = await api.getExchangeDto('USD');

    expect(result.conversionRates!['AED'], 3.6725);
  });
}
