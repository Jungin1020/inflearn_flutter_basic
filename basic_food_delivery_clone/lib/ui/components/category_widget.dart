import 'package:basic_food_delivery_clone/ui/components/category_button_widget.dart';
import 'package:flutter/material.dart';

import '../../data/food_category.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({Key? key}) : super(key: key);
  final Map<String, dynamic> foodCategoryMaps = foodMaps;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      // color: Colors.blue,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildWidthSizedBox(20),
            ...foodMaps.keys
                .map(
                    (food) => CategoryButton(top: foodMaps[food], bottom: food))
                .toList()
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton() {
    return Row(
      children: [
        Container(
          width: 72,
          height: 72,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
        ),
        _buildWidthSizedBox(12),
      ],
    );
  }

  Widget _buildWidthSizedBox(double size) {
    return SizedBox(width: size);
  }
}
