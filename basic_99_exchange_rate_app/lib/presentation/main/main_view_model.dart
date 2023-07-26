import 'package:basic_99_exchange/domain/repository/exchange_repository.dart';
import 'package:basic_99_exchange/presentation/main/main_state.dart';
import 'package:flutter/material.dart';

class MainViewModel with ChangeNotifier {
  MainState _state = const MainState();

  MainState get state => _state;

  final ExchangeRepository _repository;

  MainViewModel(this._repository) {
    fetchExchanges(state.baseCountry);
  }

  Future<void> fetchExchanges(String query) async {
    _state = state.copyWith(baseCountry: query);
    notifyListeners();

    final exchanges = await _repository.getExchanges(query);
    _state = state.copyWith(exchanges: exchanges);
    notifyListeners();
  }

  void onChangeBaseCountry(String country) {
    _state = state.copyWith(
      baseCountry: country,
    );
    notifyListeners();
  }

  void onChangeTargetCountry(String country) {
    // _state = state.copyWith(
    //   baseCountry: country,
    // );
    // notifyListeners();
  }
}
