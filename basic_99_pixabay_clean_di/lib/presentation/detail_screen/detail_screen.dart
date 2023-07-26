import 'package:flutter/material.dart';

import '../../domain/model/photo.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.photo}) : super(key: key);

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail Screen'),
        ),
        body: Hero(tag: photo.id, child: Image.network(photo.webFormatUrl)));
  }
}
