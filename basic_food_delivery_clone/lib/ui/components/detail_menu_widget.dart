import 'package:basic_food_delivery_clone/data/menu.dart';
import 'package:basic_food_delivery_clone/ui/components/menu_list_widget.dart';
import 'package:basic_food_delivery_clone/ui/components/text_button_widget.dart';
import 'package:flutter/material.dart';

import '../../data/restaurant.dart';

class DetailMenuWidget extends StatelessWidget {
  const DetailMenuWidget(
      {Key? key, required this.menuCategory, required this.menus})
      : super(key: key);
  final List<String> menuCategory;
  final List<Menu> menus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Menu',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade800),
          ),
          SizedBox(height: 12),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: menuCategory
                      .map((menu) => TextButtonWidget(name: menu))
                      .toList())),
          SizedBox(height: 24),
          MenuListWidget(menus: menus)
        ],
      ),
    );
  }
}
