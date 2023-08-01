import 'package:basic_xx_rate_exchange_app/data/repository/rates_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('객체로 잘 변형되는지 확인', () async {
    final repository = RatesRepositoryImpl();
    final ratesResult = await repository.getRateResult();
    print(ratesResult);
    expect(ratesResult.rates['USD'], 1);
    expect(ratesResult.rates['KRW'], 1275.514182);
  });
}
