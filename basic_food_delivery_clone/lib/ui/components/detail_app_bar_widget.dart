import 'package:flutter/material.dart';

import '../../data/restaurant.dart';
import '../main/main_screen.dart';

class DetailAppBarWidget extends StatelessWidget {
  const DetailAppBarWidget({Key? key, required this.restaurant})
      : super(key: key);
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      // Container(
      //   height: 280,
      //   width: double.infinity,
      //   // color: Colors.blueAccent,
      //   decoration: const BoxDecoration(
      //       // color: Colors.blueAccent.shade400,
      //       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))),
      //   child: Column(
      //     children: [
      //       Expanded(
      //         child: Hero(
      //           tag: restaurant.id,
      //           child: Image.network(
      //             restaurant.imgUrl,
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      ClipRRect(
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(30)),
        child: Hero(
            tag: restaurant.id,
            child: SizedBox(
              height: 280,
              width: double.infinity,
              child: Image.network(
                restaurant.imgUrl,
                fit: BoxFit.fill,
              ),
            )),
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
