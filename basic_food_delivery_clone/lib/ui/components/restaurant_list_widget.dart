import 'package:basic_food_delivery_clone/ui/components/restaurant_tile_widget.dart';
import 'package:flutter/material.dart';

import '../../data/restaurant.dart';

class RestaurantListWidget extends StatelessWidget {
  const RestaurantListWidget({Key? key, required this.restaurants})
      : super(key: key);
  final List<Restaurant> restaurants;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: restaurants
            .map((restaurant) => RestaurantTileWidget(restaurant: restaurant))
            .toList());
  }
}
