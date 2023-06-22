import 'package:flutter/material.dart';

class DetailMenuWidget extends StatelessWidget {
  const DetailMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          Text(
            'Menu',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade800),
          ),
        ],
      ),
    );
  }
}
