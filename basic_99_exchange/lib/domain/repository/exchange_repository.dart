import '../model/exchange_model.dart';

abstract interface class ExchangeRepository {
  Future<ExchangeModel> getExchangeModel(String baseCode, String targetCode);
}
