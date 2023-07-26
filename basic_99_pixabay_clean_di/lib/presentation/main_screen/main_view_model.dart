import 'package:basic_99_pixabay_clean_di/domain/repository/photo_repository.dart';
import 'package:flutter/material.dart';

import 'main_state.dart';

class MainViewModel with ChangeNotifier {
  final PhotoRepository _respository;

  MainViewModel(this._respository);

  MainState _state = MainState();
  MainState get state => _state;

  void fetchPhotos(String query) async {
    final photos = await _respository.getPhotos(query);

    _state = state.copyWith(photos: photos);
    notifyListeners();
  }
}
