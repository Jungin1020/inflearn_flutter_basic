import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      // color: Colors.blue,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildWidthSizedBox(20),
            _buildCategoryButton(),
            _buildCategoryButton(),
            _buildCategoryButton(),
            _buildCategoryButton(),
            _buildCategoryButton(),
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
