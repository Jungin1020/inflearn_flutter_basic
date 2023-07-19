import 'package:basic_xx_get_it_sample/data/counter.dart';
import 'package:basic_xx_get_it_sample/data/counter_repository_impl.dart';
import 'package:basic_xx_get_it_sample/ui/main_screen.dart';
import 'package:basic_xx_get_it_sample/ui/main_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) => MainViewModel(CounterRepositoryImpl(Counter())),
          child: const MainScreen(),
        );
      },
    ),
  ],
);
