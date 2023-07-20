import 'package:basic_xx_get_it_sample/data/counter_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class MainViewModel with ChangeNotifier {
  final CounterRepository counterRepository;

  MainViewModel(this.counterRepository);

  int get count => counterRepository.getCounter().count;

  void increment() {
    counterRepository.getCounter().count++;
    notifyListeners();
  }
}
