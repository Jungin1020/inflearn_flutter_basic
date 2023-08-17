import 'package:basic_xx_get_it_sample/di/di_setup.dart';
import 'package:basic_xx_get_it_sample/ui/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text(getIt<String>()),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Text('>>>'),
            onPressed: () async {
              await context.push('/second');
              setState(() {});
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
