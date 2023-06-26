import 'package:basic_99_instagram_clone/tab/account/account_model.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  final model = AccountModel();
  AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram Clone'),
        actions: [
          IconButton(
              onPressed: () {
                model.logout();
              },
              icon: const Icon(Icons.exit_to_app_outlined))
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Stack(alignment: AlignmentDirectional.bottomEnd, children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.kukinews.com/data/kuk/image/2021/01/04/kuk202101040370.680x.0.jpg'),
                    ),
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: FloatingActionButton(
                          backgroundColor: Colors.white,
                          onPressed: null,
                          child: Icon(Icons.add),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                        height: 25,
                        child: FloatingActionButton(
                          elevation: 0.0,
                          onPressed: null,
                          child: Icon(Icons.add),
                        ),
                      ),
                    ],
                  )
                ]),
                SizedBox(height: 4),
                Text(
                  'name',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: [
                Text('3'),
                Text('게시물'),
              ],
            ),
            Column(
              children: [
                Text('3'),
                Text('게시물'),
              ],
            ),
            Column(
              children: [
                Text('3'),
                Text('게시물'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
