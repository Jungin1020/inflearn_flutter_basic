import 'dart:async';

import 'package:flutter/material.dart';

class MainViewModel with ChangeNotifier {
  // debounce를 적용할 시간 간격 (밀리초 단위)
  final debounceDuration = const Duration(milliseconds: 500);

  Timer? timer;

  // debounce 기능을 구현한 함수
  void debounce(void Function() callback) {
    if (timer != null) {
      timer?.cancel();
    }

    timer = Timer(debounceDuration, () {
      callback();
    });
  }

  void changeText(String q, String query) {
    q = query;
    notifyListeners();
  }
}
