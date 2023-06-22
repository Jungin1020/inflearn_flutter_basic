import 'package:flutter/material.dart';

import '../../data/restaurant.dart';
import '../main/main_screen.dart';

class DetailAppBarWidget extends StatelessWidget {
  const DetailAppBarWidget({Key? key, required this.restaurants})
      : super(key: key);
  final List<Restaurant> restaurants;

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
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
          iconSize: 48,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MainScreen(),
              ),
            );
          },
        ),
      ),
    ]);
  }
}
