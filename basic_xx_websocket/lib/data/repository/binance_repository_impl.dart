import 'package:basic_xx_websocket/data/data_source/binance_api.dart';
import 'package:basic_xx_websocket/domain/model/price.dart';
import 'package:basic_xx_websocket/domain/repository/price_repository.dart';

class BinanceRepositoryImpl implements PriceRepository {
  final _api = BinanceApi();

  @override
  Stream<Price> getPriceStream() {
    return _api.getPriceStream();
  }
}
