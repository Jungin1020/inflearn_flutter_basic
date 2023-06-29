import 'package:flutter/material.dart';

import '../data/model/photo.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.photoModel}) : super(key: key);

  final Photo photoModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Large Image'),
      ),
      body: Column(
        children: [
          Hero(
              tag: photoModel.id,
              child: Image.network(photoModel.largeImageURL)),
        ],
      ),
    );
  }
}
