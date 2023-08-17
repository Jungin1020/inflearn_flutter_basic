import 'package:basic_xx_rate_exchange_app/core/result.dart';
import 'package:basic_xx_rate_exchange_app/domain/repository/rates_repository.dart';
import 'package:injectable/injectable.dart';

import '../model/rates_result.dart';

@singleton
class GetRatesUseCase {
  final RatesRepository _repository;

  GetRatesUseCase(this._repository);

  Future<Result<RatesResult>> execute() async {
    try {
      return Result.success(await _repository.getRateResult());
    } catch (e) {
      return Result.error(Exception(e.toString()));
    }
  }
}
