import 'dart:async';
import 'package:basic_xx_websocket/domain/repository/price_repository.dart';
import 'package:flutter/foundation.dart';
import '../domain/model/price.dart';

class MainViewModel with ChangeNotifier {
  final PriceRepository _priceRepository;

  StreamSubscription<Price>? _subscription;

  bool _isStreamPaused = false;
  bool get isStreamPaused => _isStreamPaused;

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

  void pauseResumeStream() {
    _isStreamPaused = !_isStreamPaused;
    if (_isStreamPaused == true) {
      _subscription?.pause();
    } else {
      _subscription?.resume();
    }
    notifyListeners();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
