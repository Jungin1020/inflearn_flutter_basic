import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final Widget top;
  final String bottom;

  const CategoryButton({
    super.key,
    required this.top,
    required this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 72,
          height: 72,
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              top,
              SizedBox(height: 3),
              Text(bottom,
                  style: TextStyle(fontSize: 10, color: Colors.grey.shade700)),
            ],
          ),
        ),
        SizedBox(width: 10)
      ],
    );
  }
}
