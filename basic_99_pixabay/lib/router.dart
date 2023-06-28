import 'dart:convert';
import 'package:basic_99_pixabay/screen/detail_screen.dart';
import 'package:basic_99_pixabay/screen/future_screen.dart';
import 'package:go_router/go_router.dart';

import 'data/model/photo.dart';

final router = GoRouter(initialLocation: '/future', routes: [
  GoRoute(
    path: '/future',
    builder: (context, state) => const FutureScreen(),
  ),
  GoRoute(
    path: '/detail',
    builder: (context, state) {
      final photoModel = Photo.fromJson(
          jsonDecode((state.queryParameters['photoModel'] ?? '-')));
      return DetailScreen(photoModel: photoModel);
    },
  ),
]);
