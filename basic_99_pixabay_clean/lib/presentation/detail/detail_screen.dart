import 'package:basic_99_pixabay_clean/domain/model/photo.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.photo}) : super(key: key);

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: Column(
        children: [
          Hero(
            tag: photo.id,
            child: Image.network(
              photo.url,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
