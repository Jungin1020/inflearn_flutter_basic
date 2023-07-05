import 'dart:collection';
import 'dart:convert';
import 'package:basic_99_pixabay/ui/detail_screen.dart';
import 'package:basic_99_pixabay/ui/main_screen.dart';
import 'package:basic_99_pixabay/ui/main_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'data/model/photo.dart';

final router = GoRouter(initialLocation: '/main', routes: [
  GoRoute(
    path: '/main',
    builder: (context, state) => ChangeNotifierProvider(
      create: (context) => MainViewModel(),
      child: const MainScreen(),
    ),
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
