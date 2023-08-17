import 'package:basic_99_pixabay_clean/data/repository/pixabay_photo_repository_impl.dart';
import 'package:basic_99_pixabay_clean/domain/model/photo.dart';
import 'package:basic_99_pixabay_clean/domain/use_case/get_top_five_most_viewed_images_use_case.dart';
import 'package:basic_99_pixabay_clean/presentation/main/main_screen.dart';
import 'package:basic_99_pixabay_clean/presentation/main/main_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../presentation/detail/detail_screen.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/main',
  routes: [
    GoRoute(
      path: '/main',
      builder: (context, state) {
        return ChangeNotifierProvider(
            create: (_) => MainViewModel(
                GetTopFiveMostViewedUseCase(PixabayPhotoRepositoryImpl())),
            child: const MainScreen());
      },
    ),
    GoRoute(
        path: '/detail',
        builder: (context, state) {
          final photo = state.extra as Photo;
          return DetailScreen(photo: photo);
        })
  ],
);
