import 'package:basic_99_exchange/data/data_source/exchange_api.dart';
import 'package:basic_99_exchange/data/mapper/exchange_mapper.dart';
import 'package:basic_99_exchange/domain/repository/exchange_repository.dart';

class ExchangeRepositoryImpl implements ExchangeRepository {
  final ExchangeApi _api;

  ExchangeRepositoryImpl(this._api);

  @override
  Future<Map<String, dynamic>> getExchanges(String baseCode) async {
    final dto = await _api.getExchangeDto(baseCode);
    return dto.toExchangeModel().conversionRates;
  }
}
