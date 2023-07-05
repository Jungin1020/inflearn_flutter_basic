import 'package:basic_99_pixabay_clean/domain/repository/photo_repository.dart';
import 'package:basic_99_pixabay_clean/presentation/main/main_state.dart';
import 'package:flutter/material.dart';

class MainViewModel with ChangeNotifier {
  final PhotoRepository _repository;

  MainViewModel(this._repository);

  MainState _state = const MainState();
  MainState get state => _state;

  void fetchPhotos(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final photos = await _repository.getPhotos(query);

    _state = state.copyWith(isLoading: true, photos: photos);
    notifyListeners();
  }
}
