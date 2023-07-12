import 'package:basic_99_metro_clean_architecture/domain/usecase/get_two_closest_subways_usecase.dart';
import 'package:basic_99_metro_clean_architecture/presentation/main/main_state.dart';
import 'package:flutter/material.dart';

class MainViewModel with ChangeNotifier {
  final GetTwoClosestSubwaysUseCase _getTwoClosestSubways;

  MainViewModel(this._getTwoClosestSubways);

  MainState _state = const MainState();

  MainState get state => _state;

  void fetchSubway(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final subways = await _getTwoClosestSubways.execute(query);

    _state = state.copyWith(subways: subways, isLoading: false);
    notifyListeners();
  }
}
