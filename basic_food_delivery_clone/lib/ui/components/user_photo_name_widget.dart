import 'package:flutter/material.dart';

class UserPhotoNameWidget extends StatelessWidget {
  const UserPhotoNameWidget(
      {Key? key, required this.name, required this.imageUrl})
      : super(key: key);

  final String name;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
                width: 40,
                child: CircleAvatar(backgroundImage: NetworkImage(imageUrl))),
            // child: CircleAvatar()),
            const SizedBox(width: 5),
            Text(
              name,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
        const Icon(
          Icons.apps_sharp,
          color: Colors.white,
        )
      ],
    );
  }
}
