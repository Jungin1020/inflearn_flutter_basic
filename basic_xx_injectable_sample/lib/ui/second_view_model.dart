import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../data/counter_repository.dart';

@injectable
class SecondViewModel with ChangeNotifier {
  final CounterRepository counterRepository;

  SecondViewModel(this.counterRepository);

  int get count => counterRepository.getCounter().count;

  void increment() {
    counterRepository.getCounter().count++;
    notifyListeners();
  }
}
