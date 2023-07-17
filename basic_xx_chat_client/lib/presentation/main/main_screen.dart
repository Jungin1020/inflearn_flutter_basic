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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                reverse: true,
                children: viewModel.messages
                    .map(
                      (e) => SizedBox(
                        height: 56,
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  Center(
                                    child: AnimatedContainer(
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade100,
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20),
                                        ),
                                      ),
                                      padding: const EdgeInsets.all(10),
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.easeInOut,
                                      child: Text(
                                        e.message,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 10),
                              CircleAvatar(
                                radius: 18,
                                backgroundColor: Colors.grey,
                                child: CircleAvatar(
                                  radius: 16,
                                  backgroundColor: Colors.grey.shade200,
                                  // foregroundColor: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        height: 0.5,
                                      ),
                                      Text('정인',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey.shade600,
                                          )),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList()
                    .reversed
                    .toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              height: 56,
              child: TextField(
                controller: messageTextController,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    hintText: '메세지를 입력하세요',
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.send_outlined),
                      onPressed: () {
                        viewModel.sendMessage(
                          nameTextController.text,
                          messageTextController.text,
                        );
                        messageTextController.clear();
                      },
                    )),
              ),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
