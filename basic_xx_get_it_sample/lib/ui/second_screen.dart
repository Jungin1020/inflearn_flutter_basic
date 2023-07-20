import 'package:basic_xx_get_it_sample/ui/second_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SecondViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Text('<<<'),
            onPressed: () {
              context.pop();
              // context.push('/');
            },
          ),
          const SizedBox(height: 20),
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              viewModel.increment();
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          '${viewModel.count}',
          style: const TextStyle(fontSize: 100),
        ),
      ),
    );
  }
}
