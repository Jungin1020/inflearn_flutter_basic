import 'package:flutter/material.dart';
import 'main_screen_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final viewModel = MainScreenViewModel();

  @override
  void initState() {
    super.initState();
    // 화면이 처음 시작되는 부분
    viewModel.load();
  }

  @override
  void dispose() {
    viewModel.heightController.dispose();
    viewModel.weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('비만도 계산기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: viewModel.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                controller: viewModel.heightController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: '키'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  return viewModel.existValueHeight(value);
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: viewModel.weightController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: '몸무게'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  return viewModel.existValueWeight(value);
                },
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                  child: const Text('결과'),
                  onPressed: () {
                    viewModel.existFormKeyCurrentState();
                    viewModel.save();
                    viewModel.navPush(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
