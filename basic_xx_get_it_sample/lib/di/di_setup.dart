import 'package:basic_xx_get_it_sample/data/counter_repository.dart';
import 'package:basic_xx_get_it_sample/data/counter_repository_impl.dart';
import 'package:get_it/get_it.dart';

import '../data/counter.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  // 싱글턴
  // getIt.registerSingleton<Counter>(Counter());

  // 매번 생성
  // getIt.registerFactory<Counter>(() => Counter());

  // 1
  getIt.registerSingleton<Counter>(Counter());

  getIt.registerSingleton<CounterRepository>(
      CounterRepositoryImpl(getIt<Counter>()));
  // 2
  getIt.registerSingleton<CounterRepository>(CounterRepositoryImpl(Counter()));

  // 1, 2 코드는 결과적으로는 같은 듯?
}
