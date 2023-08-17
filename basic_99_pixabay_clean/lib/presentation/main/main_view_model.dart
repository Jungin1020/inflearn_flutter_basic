import 'dart:async';

import 'package:basic_99_pixabay_clean/domain/use_case/get_top_five_most_viewed_images_use_case.dart';
import 'package:basic_99_pixabay_clean/presentation/main/main_state.dart';
import 'package:basic_99_pixabay_clean/presentation/main/main_ui_event.dart';
import 'package:flutter/material.dart';

import '../../core/result.dart';

class MainViewModel with ChangeNotifier {
  final GetTopFiveMostViewedUseCase _getTopFiveMostViewedUseCase;

  final _eventController = StreamController<MainUiEvent>();

  Stream<MainUiEvent> get eventStream => _eventController.stream;

  MainViewModel(this._getTopFiveMostViewedUseCase);

  MainState _state = const MainState();

  MainState get state => _state;

  void fetchPhotos(String query) async {
    if (query.isEmpty) {
      _eventController.add(const ShowSnackBar('검색어를 입력해주세요.'));
      return;
    }

    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _getTopFiveMostViewedUseCase.execute(query);

    switch (result) {
      case Success(:final data):
        _state = state.copyWith(
          isLoading: false,
          photos: data,
        );
        notifyListeners();
        _eventController.add(const EndLoading());

      case Error(:final e):
        _eventController.add(ShowSnackBar(e));
    }

    notifyListeners();
  }
}
