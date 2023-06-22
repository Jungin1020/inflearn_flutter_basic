import 'package:basic_food_delivery_clone/data/user_repo.dart';
import 'package:basic_food_delivery_clone/ui/components/user_info_widget.dart';
import 'package:basic_food_delivery_clone/ui/components/user_photo_name_widget.dart';
import 'package:flutter/material.dart';

import '../../data/restaurant.dart';
import '../main/main_screen.dart';

class DetailAppBarWidget extends StatelessWidget {
  DetailAppBarWidget({Key? key, required this.restaurants}) : super(key: key);
  List<Restaurant> restaurants;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 280,
        width: double.infinity,
        // color: Colors.blueAccent,
        decoration: const BoxDecoration(
            // color: Colors.blueAccent.shade400,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))),
        child: Column(
          children: [
            Expanded(
              child: Hero(
                tag: restaurants[0].id,
                child: Image.network(
                  restaurants[0].imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        top: 30,
        left: 10,
        child: IconButton(
          color: Colors.black,
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
          iconSize: 48,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MainScreen(),
              ),
            );
          },
        ),
      ),
    ]);
  }

  Widget _buildHeightSizedBox(double size) {
    return SizedBox(height: size);
  }

// Widget _buildWidthSizedBox(double size) {
//   return SizedBox(width: size);
// }
}
