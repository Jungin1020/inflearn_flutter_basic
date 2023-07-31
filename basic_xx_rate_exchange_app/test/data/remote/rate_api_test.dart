import 'package:basic_xx_rate_exchange_app/data/remote/rate_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dio/dio.dart';

void main() {
  test('api 데이터가 잘 들어오는지 확인', () async {
    final api = RateAPi(Dio());

    final dto = await api.getRates();

    expect(dto.rates!['USD'], 1);
    expect(dto.rates!['KRW'], 1275.514182);
  });
}
