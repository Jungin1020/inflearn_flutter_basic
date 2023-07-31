import 'package:basic_xx_rate_exchange_app/core/result.dart';
import 'package:basic_xx_rate_exchange_app/domain/use_case/get_rates_use_case.dart';
import 'package:basic_xx_rate_exchange_app/presentation/main_state.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'main_event.dart';

@injectable
class MainViewModel with ChangeNotifier {
  final GetRatesUseCase _getRatesUseCase;

  MainViewModel(this._getRatesUseCase) {
    _fetchRates();
  }

  MainState _state = const MainState();

  MainState get state => _state;

  void onEvent(MainEvent event) {
    switch (event) {
      case LoadData():
        _fetchRates();
      case InputBaseMoney():
        _state = state.copyWith(baseMoney: event.money);
      case InputTargetMoney():
        _state = state.copyWith(targetMoney: event.money);
      case SelectBaseCode():
        _state = state.copyWith(baseCode: event.code);
      case SelectTargetCode():
        _state = state.copyWith(targetCode: event.code);
    }
    notifyListeners();
  }

  void _fetchRates() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _getRatesUseCase.execute();

    switch (result) {
      case Success(:final data):
        _state = state.copyWith(rates: data.rates, isLoading: false);
        notifyListeners();
      case Error(:final e):
        print(e);
    }
  }
}
