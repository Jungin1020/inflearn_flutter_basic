import 'package:basic_99_pixabay_clean_di/core/di/di_setup.dart';
import 'package:basic_99_pixabay_clean_di/domain/model/photo.dart';
import 'package:basic_99_pixabay_clean_di/presentation/detail_screen/detail_screen.dart';
import 'package:basic_99_pixabay_clean_di/presentation/main_screen/main_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

import '../presentation/main_screen/main_view_model.dart';

// GoRouter configuration
@singleton
final router = GoRouter(
  initialLocation: '/main',
  routes: [
    GoRoute(
      path: '/main',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) =>
              // MainViewModel(GetFivePhotosUseCase(PixabayRepositoryImpl())),
              getIt<MainViewModel>(),
          child: const MainScreen(),
        );
      },
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) {
        final photo = state.extra as Photo;
        return DetailScreen(photo: photo);
      },
    ),
  ],
);
