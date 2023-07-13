import '../model/price.dart';

abstract interface class PriceRepository {
  Stream<Price> getPriceStream();
}
