import 'package:basic_99_instagram_clone/create/create_page.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  final List<String> _urls = const [
    'https://www.kukinews.com/data/kuk/image/2021/01/04/kuk202101040370.680x.0.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNGYmHi2IkE5v9_LVQfFnyyMkmyDVz0kNrnA&usqp=CAU',
    'https://www.kukinews.com/data/kuk/image/2021/01/04/kuk202101040370.680x.0.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNGYmHi2IkE5v9_LVQfFnyyMkmyDVz0kNrnA&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreatePage()),
          );
        },
        child: const Icon(Icons.create),
      ),
      appBar: AppBar(
        title: const Text('Instagram Clone'),
      ),
      body: GridView.builder(
          itemCount: _urls.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 2.0,
            crossAxisCount: 3,
          ),
          itemBuilder: (BuildContext context, int index) {
            final url = _urls[index];
            return Image.network(
              url,
              fit: BoxFit.cover,
            );
          }),
    );
  }
}
