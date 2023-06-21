import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final Widget top;
  final Widget bottom;

  const CategoryButton({
    super.key,
    required this.top,
    required this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          top,
          bottom,
        ],
      ),
    );
  }
}
