import 'package:basic_food_delivery_clone/ui/components/user_info_widget.dart';
import 'package:basic_food_delivery_clone/ui/components/user_photo_name_widget.dart';
import 'package:flutter/material.dart';

import '../../data/user.dart';

class MainAppBarWidget extends StatelessWidget {
  const MainAppBarWidget({Key? key, required this.users}) : super(key: key);
  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      decoration: BoxDecoration(
          color: Colors.blueAccent.shade400,
          borderRadius:
              const BorderRadius.only(bottomLeft: Radius.circular(30))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            _buildHeightSizedBox(56),
            UserPhotoNameWidget(name: users[0].name, imageUrl: users[0].imgUrl),
            _buildHeightSizedBox(36),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UserInfoWidget(top: 'Bring order to', bottom: users[0].address),
                Container(width: 0.5, height: 44, color: Colors.white),
                UserInfoWidget(top: 'When?', bottom: users[0].orderTime),
                // _buildWidthSizedBox(10)
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeightSizedBox(double size) {
    return SizedBox(height: size);
  }

  // Widget _buildWidthSizedBox(double size) {
  //   return SizedBox(width: size);
  // }
}
