import 'package:basic_xx_chat_client/presentation/main/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final messageTextController = TextEditingController();
  final nameTextController = TextEditingController();

  @override
  void dispose() {
    messageTextController.dispose();
    nameTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chatting Room'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: viewModel.messages
                  .map(
                    (e) => ListTile(
                      title: Text(e.message),
                    ),
                  )
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Row(
              children: [
                Container(
                    width: 100,
                    child: TextField(controller: nameTextController)),
                SizedBox(width: 20),
                Expanded(
                  child: TextField(
                    controller: messageTextController,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                      icon: const Icon(Icons.send_outlined),
                      onPressed: () {
                        viewModel.sendMessage(
                          nameTextController.text,
                          messageTextController.text,
                        );
                      },
                    )),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
