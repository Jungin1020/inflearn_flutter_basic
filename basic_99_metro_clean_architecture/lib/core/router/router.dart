import 'package:basic_99_metro_clean_architecture/data/repository/seoul_subway_repository_impl.dart';
import 'package:basic_99_metro_clean_architecture/domain/model/subway.dart';
import 'package:basic_99_metro_clean_architecture/domain/usecase/get_two_closest_subways_usecase.dart';
import 'package:basic_99_metro_clean_architecture/presentation/detail/detail_screen.dart';
import 'package:basic_99_metro_clean_architecture/presentation/main/main_screen.dart';
import 'package:basic_99_metro_clean_architecture/presentation/main/main_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/main',
  routes: [
    GoRoute(
      path: '/main',
      builder: (context, state) {
        return ChangeNotifierProvider(
            create: (_) => MainViewModel(
                GetTwoClosestSubwaysUseCase(SeoulSubwayRepositoryImpl())),
            child: MainScreen());
      },
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) {
        final subway = state.extra as Subway;
        return DetailScreen(subway: subway);
      },
    ),
  ],
);
