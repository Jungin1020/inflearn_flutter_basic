import 'package:flutter/material.dart';

// CamelCase (낙타형)
// snake_case (뱀형)
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // shift + F6 refactor로 한꺼번에 바꾸기
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 앱을 만들 때 기본이 되는 뼈대를 제공하는 위젯
      appBar: AppBar(
        title: Text('홈'),
      ),
      body: Center(
        // option + Enter로 Column으로 감싸기
        child: Column(
          // Column 내부에 있는 요소를 정렬
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '숫자',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            Text(
              '$number',
              style: TextStyle(
                color: Colors.red,
                fontSize: 60,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Elevated Button');
              },
              child: Text('Elevated Button'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Text Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Outlined Button'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 화면 갱신
          setState(() {
            number++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
