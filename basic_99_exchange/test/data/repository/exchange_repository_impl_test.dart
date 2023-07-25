import 'package:basic_99_exchange/data/data_source/exchange_api.dart';
import 'package:basic_99_exchange/data/repository/exchange_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final api = ExchangeApi();
  const baseCode = 'USD';
  test('모델 클래스로 잘 변환되는지 확인', () async {
    final repository = ExchangeRepositoryImpl(api);
    final exchanges = await repository.getExchanges(baseCode);

    expect(exchanges['AED'], 3.6725);
  });
}
