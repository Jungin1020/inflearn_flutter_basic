import 'package:basic_99_pixabay_clean/presentation/main/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final _state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pixabay Clean Architecture'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          TextField(
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
          const SizedBox(height: 30),
          Expanded(
              child: GridView.builder(
                  itemCount: _state.photos.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    final photo = _state.photos[index];
                    return Image.network(photo.url, fit: BoxFit.cover);
                  }))
        ],
      ),
    );
  }
}
