import 'package:basic_99_pixabay_clean_di/data/repository/pixabay_repository_impl.dart';
import 'package:basic_99_pixabay_clean_di/domain/model/photo.dart';
import 'package:basic_99_pixabay_clean_di/domain/usecase/get_five_photos_use_case.dart';
import 'package:basic_99_pixabay_clean_di/presentation/detail_screen/detail_screen.dart';
import 'package:basic_99_pixabay_clean_di/presentation/main_screen/main_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../presentation/main_screen/main_view_model.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/main',
  routes: [
    GoRoute(
      path: '/main',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) =>
              MainViewModel(GetFivePhotosUseCase(PixabayRepositoryImpl())),
          child: MainScreen(),
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
