import 'package:basic_99_pixabay/ui/components/search_text_field_widget.dart';
import 'package:basic_99_pixabay/ui/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/api/photo_api.dart';
import '../data/model/photo.dart';
import 'components/photo_grid_view_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final api = PhotoApi();

  // final q = 'apple';
  String q = '';

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pixarbay Clone'),
      ),
      body: Center(
        child: Column(
          children: [
            // SearchScreen(),
            const SizedBox(height: 30),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SearchTextFieldWidget(
                  onTextChange: (query) {
                    viewModel.changeText(q, query);
                  },
                  // 여기서 에러
                  // debounce: viewModel.debounce(),
                ),
              ),
            ),
            const SizedBox(height: 30),
            FutureBuilder<List<Photo>>(
                future: api.getPhotos(q),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }

                  if (snapshot.hasData == false) {
                    // 로딩
                    return Text(
                      '데이터 없음',
                      style: Theme.of(context).textTheme.displayLarge,
                    );
                  }

                  final photos = snapshot.data!;

                  // debugPrint(photos.length.toString());

                  return Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: PhotoGridViewWidget(photos: photos),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
