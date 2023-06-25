import 'package:flutter/material.dart';

class _FutureScreenState extends StatefulWidget {
  const _FutureScreenState({Key? key}) : super(key: key);

  @override
  State<_FutureScreenState> createState() => _FutureScreenStateState();
}

class _FutureScreenStateState extends State<_FutureScreenState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text('여기에 표시'),
        ],
      ),),
    );
  }
}


Future