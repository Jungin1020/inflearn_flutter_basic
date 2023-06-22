import 'dart:convert';

import 'package:go_router/go_router.dart';

import 'data/restaurant.dart';
import 'ui/main/detail_screen.dart';
import 'ui/main/main_screen.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/main',
  routes: [
    GoRoute(
      path: '/main',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) {
        final restaurantModel = Restaurant.fromJson(
            jsonDecode((state.queryParameters['restaurantModel'] ?? '-')));
        return DetailScreen(restaurantModel: restaurantModel);
      },
    ),
  ],
);
