import 'dart:async';
import 'package:basic_xx_websocket/domain/repository/price_repository.dart';
import 'package:flutter/foundation.dart';
import '../domain/model/price.dart';

class MainViewModel with ChangeNotifier {
  final PriceRepository _priceRepository;

  StreamSubscription<Price>? _subscription;

  final List<Price> _prices = [];

  List<Price> get prices => List.unmodifiable(_prices);

  MainViewModel(this._priceRepository);
  // MainViewModel(this._priceRepository) {
  //   fetch();
  // }

  void fetch() {
    _subscription = _priceRepository.getPriceStream().listen((price) {
      _prices.add(price);
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
