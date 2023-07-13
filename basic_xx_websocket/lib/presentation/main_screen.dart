import 'package:basic_xx_websocket/presentation/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('How to Use WebSocket'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              viewModel.fetch();
            },
            child: const Text('Go!'),
          ),
          Expanded(
            child: ListView(
              children:
                  viewModel.prices.map((e) => Text(e.toString())).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
