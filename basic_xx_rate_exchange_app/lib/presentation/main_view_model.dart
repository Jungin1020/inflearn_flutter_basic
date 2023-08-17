import 'package:basic_xx_rate_exchange_app/core/result.dart';
import 'package:basic_xx_rate_exchange_app/domain/use_case/get_rates_use_case.dart';
import 'package:basic_xx_rate_exchange_app/presentation/main_state.dart';
import 'package:basic_xx_rate_exchange_app/presentation/main_ui_event.dart';
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

  void onUiEvent(MainUiEvent event) {
    switch (event) {
      case IsTapped():
        _state = state.copyWith(isTapped: true);
      case IsNotTapped():
        _state = state.copyWith(isTapped: false);
    }
  }

  void onEvent(MainEvent event) {
    switch (event) {
      case LoadData():
        _fetchRates();
      // _state = state.copyWith(targetMoney: state.rates[state.targetCode]);

      case InputBaseMoney():
        _state = state.copyWith(
            baseMoney: event.money,
            targetMoney: num.parse((event.money *
                    state.rates[state.targetCode] /
                    state.rates[state.baseCode])
                .toStringAsFixed(4)));

      case InputTargetMoney():
        _state = state.copyWith(
            targetMoney: event.money,
            baseMoney: num.parse((event.money *
                    state.rates[state.baseCode] /
                    state.rates[state.targetCode])
                .toStringAsFixed(4)));

      case SelectBaseCode():
        _state = state.copyWith(
            baseCode: event.code,
            targetMoney: num.parse((state.baseMoney *
                    state.rates[state.targetCode] /
                    state.rates[event.code])
                .toStringAsFixed(4)));

      case SelectTargetCode():
        _state = state.copyWith(
            targetCode: event.code,
            targetMoney: num.parse((state.baseMoney *
                    state.rates[event.code] /
                    state.rates[state.baseCode])
                .toStringAsFixed(4)));
    }
    notifyListeners();
  }

  void _fetchRates() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _getRatesUseCase.execute();

    switch (result) {
      case Success(:final data):
        _state = state.copyWith(
            lastUpdateTime: data.lastUpdateTime,
            rates: data.rates,
            targetMoney:
                num.parse(data.rates[state.targetCode].toStringAsFixed(4)),
            isLoading: false);
        notifyListeners();
      case Error(:final e):
        print(e);
    }
  }
}
