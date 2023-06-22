import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.grey.shade400),
        ),
        const SizedBox(width: 20)
      ],
    );
  }
}
