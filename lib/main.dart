import 'package:flutter/material.dart';
import 'package:inflearn_flutter_basic/main_page.dart';

void main() {
  runApp(const MyApp());
}

// 남겨둬야하는 부분
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}
