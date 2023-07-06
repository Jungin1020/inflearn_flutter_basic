import 'package:basic_99_pixabay_clean/presentation/main/main_ui_event.dart';
import 'package:basic_99_pixabay_clean/presentation/main/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      context.read<MainViewModel>().eventStream.listen((event) {
        switch (event) {
          case ShowSnackBar(:final message):
            final snackBar = SnackBar(content: Text(message));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          case EndLoading():
            print('로딩 끝');
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pixabay Clean Architecture'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search_outlined),
                  onPressed: () {
                    viewModel.fetchPhotos(controller.text);
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GridView.builder(
                itemCount: state.photos.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 2.0,
                    mainAxisSpacing: 2.0,
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  final photo = state.photos[index];
                  return GestureDetector(
                      onTap: () {
                        context.push('/detail', extra: photo);
                      },
                      child: Hero(
                          tag: photo.id,
                          child: Image.network(photo.url, fit: BoxFit.cover)));
                }),
          ))
        ],
      ),
    );
  }
}
