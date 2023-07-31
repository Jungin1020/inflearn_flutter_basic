import 'package:basic_xx_rate_exchange_app/data/remote/rates_dto.dart';
import 'package:basic_xx_rate_exchange_app/domain/model/rates_result.dart';

extension ToRateResult on RatesDto {
  RatesResult toRateResult() {
    return RatesResult(
      lastUpdateTime: timeLastUpdateUtc ?? '',
      nextUpdateTime: timeNextUpdateUtc ?? '',
      rates: rates ?? {},
    );
  }
}
