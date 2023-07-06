import 'dart:async';

import 'package:basic_99_pixabay_clean/domain/use_case/get_top_five_most_viewed_images_use_case.dart';
import 'package:basic_99_pixabay_clean/presentation/main/main_state.dart';
import 'package:basic_99_pixabay_clean/presentation/main/main_ui_event.dart';
import 'package:flutter/material.dart';

class MainViewModel with ChangeNotifier {
  final GetTopFiveMostViewedUseCase _getTopFiveMostViewedUseCase;

  final _eventController = StreamController<MainUiEvent>();

  Stream<MainUiEvent> get eventStream => _eventController.stream;

  MainViewModel(this._getTopFiveMostViewedUseCase);

  MainState _state = const MainState();

  MainState get state => _state;

  void fetchPhotos(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    _state = state.copyWith(
        isLoading: true,
        photos: await _getTopFiveMostViewedUseCase.execute(query));
    notifyListeners();
  }
}
