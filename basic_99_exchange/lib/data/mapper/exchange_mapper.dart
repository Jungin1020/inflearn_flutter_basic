import 'package:basic_99_exchange/data/dto/exchange_dto_result.dart';
import 'package:basic_99_exchange/domain/model/exchange_model.dart';

extension ToExchangeModel on ExchangeDtoResult {
  ExchangeModel toExchangeModel() {
    return ExchangeModel(
      result: result ?? '',
      lastUpdate: timeLastUpdateUtc ?? '',
      nextUpdate: timeNextUpdateUtc ?? '',
      baseCode: baseCode ?? '',
      conversionRates: conversionRates ?? {},
    );
  }
}
