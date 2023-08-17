import 'package:flutter/material.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({Key? key, required this.top, required this.bottom})
      : super(key: key);
  final String top;
  final String bottom;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(top, style: const TextStyle(fontSize: 12, color: Colors.white)),
        const SizedBox(height: 8),
        Text(bottom,
            style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ],
    );
  }
}
