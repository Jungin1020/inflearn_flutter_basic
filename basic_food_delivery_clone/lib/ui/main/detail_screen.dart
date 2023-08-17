import 'package:basic_food_delivery_clone/data/restaurant.dart';
import 'package:basic_food_delivery_clone/ui/components/detail_about_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/menu_category.dart';
import '../components/detail_app_bar_widget.dart';
import '../components/detail_menu_widget.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key, required this.restaurantModel}) : super(key: key);
  final Restaurant restaurantModel;
  final menuCategory = menuCategoryList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailAppBarWidget(restaurant: restaurantModel),
            _buildSizedBox(28),
            DetailAboutWidget(description: restaurantModel.description),
            _buildSizedBox(28),
            DetailMenuWidget(
                menuCategory: menuCategory, menus: restaurantModel.menus),
          ],
        ),
      ),
    );
  }

  Widget _buildSizedBox(double size) {
    return SizedBox(height: size);
  }
}
