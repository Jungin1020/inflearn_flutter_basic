import 'package:basic_xx_rate_exchange_app/data/remote/rate_api.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @prod
  @lazySingleton
  RateAPi get rateApi => RateAPi(Dio());
}

@module
abstract class AppDebugModule {
  @dev
  @lazySingleton
  RateAPi get rateApi => RateAPi(Dio());
  // 나중에 Mock Api로 교체
  // Dio docs 참고
}
