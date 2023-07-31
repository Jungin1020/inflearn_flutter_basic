import 'package:basic_xx_rate_exchange_app/data/remote/rate_api.dart';
import 'package:basic_xx_rate_exchange_app/data/remote/rate_mapper.dart';
import 'package:basic_xx_rate_exchange_app/domain/model/rates_result.dart';
import 'package:basic_xx_rate_exchange_app/domain/repository/rates_repository.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: RatesRepository)
class RatesRepositoryImpl implements RatesRepository {
  @override
  Future<RatesResult> getRateResult() async {
    final api = RateAPi(Dio());
    final dto = await api.getRates();

    return dto.toRateResult();
  }
}
