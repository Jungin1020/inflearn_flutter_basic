import 'package:basic_food_delivery_clone/ui/components/detail_about_widget.dart';
import 'package:flutter/material.dart';

import '../../data/restaurant.dart';
import '../../data/restaurant_repo.dart';
import '../components/detail_app_bar_widget.dart';
import '../components/detaul_menu_widget.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key}) : super(key: key);
  List<Restaurant> restaurants = RestaurantRepository().getRestaurants();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailAppBarWidget(restaurants: restaurants),
            _buildSizedBox(28),
            DetailAboutWidget(),
            _buildSizedBox(28),
            DetailMenuWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildSizedBox(double size) {
    return SizedBox(height: size);
  }
}
