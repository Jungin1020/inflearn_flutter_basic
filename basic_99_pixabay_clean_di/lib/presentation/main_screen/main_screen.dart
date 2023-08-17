import 'package:basic_99_pixabay_clean_di/presentation/main_screen/main_ui_event.dart';
import 'package:flutter/material.dart';
import 'package:basic_99_pixabay_clean_di/core/di/di_setup.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'main_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<MainViewModel>().eventStream.listen((event) {
        switch (event) {
          case ShowSnackbar(:final message):
            final snackBar = SnackBar(content: Text(message));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          case EndLoading():
            const snackBar = SnackBar(content: Text('로딩 끝'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
        title: Text(getIt<String>()),
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
