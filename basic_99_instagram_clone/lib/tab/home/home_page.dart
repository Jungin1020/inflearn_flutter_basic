import 'package:basic_99_instagram_clone/tab/home/home_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = HomeModel();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram clone'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Welcome to the Instagram',
              style: TextStyle(fontSize: 24),
            ),
            const Text('사진과 동영상을 보려면 팔로우하세요'),
            const SizedBox(height: 20),
            Card(
              elevation: 4.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: CircleAvatar(
                        backgroundImage:
                            NetworkImage(model.getProfileImageUrl()),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      model.getEmail(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      model.getNickName(),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://www.kukinews.com/data/kuk/image/2021/01/04/kuk202101040370.680x.0.jpg',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 4),
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNGYmHi2IkE5v9_LVQfFnyyMkmyDVz0kNrnA&usqp=CAU',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 4),
                        Image.network(
                          'https://www.kukinews.com/data/kuk/image/2021/01/04/kuk202101040370.680x.0.jpg',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text('friends'),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Follow'))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
