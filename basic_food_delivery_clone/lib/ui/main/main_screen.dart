import 'package:flutter/material.dart';

import '../../data/restaurant.dart';
import '../../data/restaurant_repo.dart';
import '../../data/user.dart';
import '../../data/user_repo.dart';
import '../components/main_app_bar_widget.dart';
import '../components/category_widget.dart';
import '../components/restaurant_list_widget.dart';
import '../components/search_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<User> users = UserRepository().getUsers();
  List<Restaurant> restaurants = RestaurantRepository().getRestaurants();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MainAppBarWidget(users: users),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
                _buildSizedBox(30),
                const SearchWidget(),
                _buildSizedBox(20),
                CategoryWidget(),
                _buildSizedBox(30),
                RestaurantListWidget(restaurants: restaurants),
                _buildSizedBox(24),
                // RestaurantListWidget(restaurants: restaurants),
                // _buildSizedBox(24),
                // RestaurantListWidget(restaurants: restaurants),
              ]),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade50,
    );
  }

  Widget _buildSizedBox(double size) {
    return SizedBox(height: size);
  }
}
