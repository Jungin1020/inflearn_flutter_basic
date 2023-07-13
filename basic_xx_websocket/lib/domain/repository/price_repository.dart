import '../model/price.dart';

abstract interface class PriceRepository {
  Stream<Price> getPriceStream();
}

class MockPriceRepository implements PriceRepository {
  final _prices = [
    {
      "e": "aggTrade",
      "E": 1689237834891,
      "a": 491992303,
      "s": "BNBUSDT",
      "p": "245.060",
      "q": "2.04",
      "f": 1024882602,
      "l": 1024882602,
      "T": 1689237834737,
      "m": true
    },
    {
      "e": "aggTrade",
      "E": 1689237850131,
      "a": 491992315,
      "s": "BNBUSDT",
      "p": "245.060",
      "q": "0.63",
      "f": 1024882657,
      "l": 1024882658,
      "T": 1689237849977,
      "m": false
    },
    {
      "e": "aggTrade",
      "E": 1689237851305,
      "a": 491992317,
      "s": "BNBUSDT",
      "p": "245.060",
      "q": "1.17",
      "f": 1024882660,
      "l": 1024882661,
      "T": 1689237851150,
      "m": false
    }
  ];

  @override
  Stream<Price> getPriceStream() async* {
    for (final priceData in _prices) {
      await Future.delayed(const Duration(seconds: 1));
      final price = Price.fromJson(priceData);
      yield price;
    }
  }
}
