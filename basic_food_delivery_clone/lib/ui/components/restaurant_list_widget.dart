import 'package:basic_food_delivery_clone/data/restaurant_repo.dart';
import 'package:flutter/material.dart';

import '../../data/restaurant.dart';
import '../main/detail_screen.dart';

class RestaurantListWidget extends StatelessWidget {
  RestaurantListWidget({Key? key, required this.restaurants}) : super(key: key);
  List<Restaurant> restaurants;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 128,
      // color: Colors.grey.shade100,
      child: Stack(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildHeightSizedBox(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: double.infinity,
                  // height: 108,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.05),
                          blurRadius: 3.0,
                          spreadRadius: 0.0,
                          offset: const Offset(5, 7),
                        )
                      ]),
                  child: _buildHeightSizedBox(108),
                ),
              ),
            ],
          ),
          _buildWidthSizedBox(152),
          Positioned(
            left: 152,
            bottom: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  restaurants[0].name,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800),
                ),
                _buildHeightSizedBox(2),
                Text(
                  restaurants[0].address,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade500),
                ),
                _buildHeightSizedBox(14),
                Text(
                  '${restaurants[0].distance} . ${restaurants[0].categoryDetail}',
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade300),
                ),
              ],
            ),
          ),
          Positioned(
            left: 40,
            top: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(),
                    ),
                  );
                },
                child: Hero(
                  tag: restaurants[0].id,
                  child: Image.network(
                    restaurants[0].imgUrl,
                    width: 100,
                    height: 112,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeightSizedBox(double size) {
    return SizedBox(height: size);
  }

  Widget _buildWidthSizedBox(double size) {
    return SizedBox(width: size);
  }
}
