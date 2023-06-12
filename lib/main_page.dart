import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// CamelCase (낙타형)
// snake_case (뱀형)
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

// 완전 바깥은 그냥 Run 해야 적용됨
class _MainPageState extends State<MainPage> {
  // 변수, 인스턴스, 오브젝트(객체), 상수
  // shift + F6 refactor로 한꺼번에 바꾸기
  int number = 10; // build 바깥은 Hot restart로 실행해야 바뀜
  String _text = '';

  // https://docs.flutter.dev/cookbook/forms/text-field-changes
  // 언더바의 의미: 이 클래스 안에서만 사용하겠다는 의미, 밖에서의 접근을 막음
  final _textController = TextEditingController();

  @override
  // 화면이 닫힐 때 호출되는 함수
  void dispose() {
    number = 11; // 전역변수
    int i = 10; // 지역변수
    // textController 사용 후 메모리를 위해 해제를 해줘야함
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 앱을 만들 때 기본이 되는 뼈대를 제공하는 위젯
      appBar: AppBar(
        title: Text('카운터'), // Hot reload
      ),
      body: Center(
        // option + Enter로 Column으로 감싸기
        child: SingleChildScrollView(
          child: Column(
            // Column 내부에 있는 요소를 정렬
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              // 위젯 간 간격을 줄 때 사용, Container 보다 SizedBox가 우위
              SizedBox(height: 100),
              Container(height: 30),
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
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        labelText: '글자',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (text) {
                        _text = text;
                      },
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: ElevatedButton(
                          onPressed: () {
                            print(_textController.text);

                            // 화면 갱신
                            setState(() {});
                          },
                          child: Text('login')))
                ],
              ),
              Text(_textController.text),
              // URL로 이미지 가져오기
              Image.network(
                'https://media.istockphoto.com/id/184276818/photo/red-apple.jpg?s=612x612&w=0&k=20&c=NvO-bLsG0DJ_7Ii8SSVoKLurzjmV0Qi4eGfn6nW3l5w=',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              // 로컬에서 이미지 가져오기
              // pubspec.yaml 파일 수정
              Container(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/panda.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
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
