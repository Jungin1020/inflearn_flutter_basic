import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'main_view_model.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pixabay Clean DI'),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            SizedBox(
              child: SizedBox(
                width: 300,
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                    icon: const Icon(Icons.search_outlined),
                    onPressed: () {
                      viewModel.fetchPhotos(_controller.text);
                    },
                  )),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
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
                        child: Image.network(
                          photo.webFormatUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      )),
    );
  }
}
