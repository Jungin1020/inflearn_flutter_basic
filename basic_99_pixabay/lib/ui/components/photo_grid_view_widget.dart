import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/model/photo.dart';

class PhotoGridViewWidget extends StatelessWidget {
  const PhotoGridViewWidget({
    super.key,
    required this.photos,
  });

  final List<Photo> photos;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: photos.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 2.0,
        mainAxisSpacing: 2.0,
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        final photo = photos[index];
        final url = photo.largeImageURL;
        return GestureDetector(
          child:
              Hero(tag: photo.id, child: Image.network(url, fit: BoxFit.cover)),
          onTap: () {
            context.push(Uri(
                    path: '/detail',
                    queryParameters: {'photoModel': jsonEncode(photo.toJson())})
                .toString());
          },
        );
      },
    );
  }
}
