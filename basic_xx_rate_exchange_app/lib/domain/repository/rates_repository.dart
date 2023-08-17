import 'package:basic_xx_rate_exchange_app/domain/model/rates_result.dart';

abstract interface class RatesRepository {
  Future<RatesResult> getRateResult();
}
