import 'package:basic_99_pixabay_clean_di/domain/repository/photo_repository.dart';
import 'package:basic_99_pixabay_clean_di/domain/usecase/get_five_photos_use_case.dart';
import 'package:flutter/material.dart';

import '../../core/result.dart';
import 'main_state.dart';

class MainViewModel with ChangeNotifier {
  final GetFivePhotosUseCase getFivePhotosUseCase;

  MainState _state = const MainState();

  MainViewModel(this.getFivePhotosUseCase);
  MainState get state => _state;

  void fetchPhotos(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await getFivePhotosUseCase.execute(query);

    switch (result) {
      case Success(:final data):
        _state = state.copyWith(photos: data, isLoading: false);
        notifyListeners();

      case Error(:final e):
        print('네트워크 에러');
    }
  }
}
