import 'package:basic_xx_get_it_sample/ui/main_screen.dart';
import 'package:basic_xx_get_it_sample/ui/main_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'di/di_setup.dart';
import 'ui/second_screen.dart';
import 'ui/second_view_model.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return ChangeNotifierProvider(
          // create: (_) => MainViewModel(CounterRepositoryImpl(getIt<Counter>())),
          // create: (_) => MainViewModel(getIt<CounterRepository>()),
          create: (_) => getIt<MainViewModel>(),

          child: const MainScreen(),
        );
      },
    ),
    GoRoute(
      path: '/second',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) =>
              // SecondViewModel(CounterRepositoryImpl(getIt<Counter>())),
              // SecondViewModel(getIt<CounterRepository>()),
              getIt<SecondViewModel>(),
          child: const SecondScreen(),
        );
      },
    ),
  ],
);
