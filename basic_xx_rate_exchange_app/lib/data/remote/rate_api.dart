// http가 아닌 retrofit이란 패키지로 통신해보겠습니다.
// 인터페이스 클래스만 만들어도 알아서 구현해줍니다.

import 'package:basic_xx_rate_exchange_app/data/remote/rates_dto.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rate_api.g.dart';

@RestApi(baseUrl: "https://open.er-api.com/v6/")
abstract interface class RateAPi {
  factory RateAPi(Dio dio, {String baseUrl}) = _RateAPi;

  @GET("/latest/USD")
  Future<RatesDto> getRates();
}
