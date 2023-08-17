import 'package:basic_99_metro_clean_architecture/domain/model/subway.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.subway}) : super(key: key);
  final Subway subway;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(subway.trainLineName),
      ),
      body: Center(
        child: Column(
          children: [
            Text(subway.trainLineName),
            Text(subway.trainStatus),
            Text(subway.trainStatusMsg),
          ],
        ),
      ),
    );
  }
}
