import 'dart:async';

import 'package:basic_99_pixabay_clean_di/domain/usecase/get_five_photos_use_case.dart';
import 'package:basic_99_pixabay_clean_di/presentation/main_screen/main_ui_event.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../core/result.dart';
import 'main_state.dart';

@injectable
class MainViewModel with ChangeNotifier {
  final GetFivePhotosUseCase getFivePhotosUseCase;

  final _eventController = StreamController<MainUiEvent>();

  Stream<MainUiEvent> get eventStream => _eventController.stream;

  MainState _state = const MainState();

  MainViewModel(this.getFivePhotosUseCase);

  MainState get state => _state;

  void fetchPhotos(String query) async {
    if (query.isEmpty) {
      _eventController.add(const ShowSnackbar('검색어 입력해라'));
      return;
    }

    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await getFivePhotosUseCase.execute(query);

    switch (result) {
      case Success(:final data):
        _state = state.copyWith(photos: data, isLoading: false);
        notifyListeners();

        _eventController.add(const EndLoading());

      case Error(:final e):
        _eventController.add(ShowSnackbar(e));
    }
  }
}
