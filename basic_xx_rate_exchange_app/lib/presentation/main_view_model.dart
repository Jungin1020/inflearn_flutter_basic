import 'package:basic_xx_rate_exchange_app/core/result.dart';
import 'package:basic_xx_rate_exchange_app/domain/use_case/get_rates_use_case.dart';
import 'package:basic_xx_rate_exchange_app/presentation/main_state.dart';
import 'package:flutter/material.dart';

class MainViewModel with ChangeNotifier {
  final GetRatesUseCase _getRatesUseCase;

  MainViewModel(this._getRatesUseCase);

  MainState _state = const MainState();

  MainState get state => _state;

  void _fetchRates() async {
    _state = state.copyWith(isLoading: true);
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
