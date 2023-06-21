import 'user.dart';

class UserRepository {
  List<User> getUsers() {
    return [
      User(
          name: 'David Morgan',
          imgUrl:
              'https://img.mbn.co.kr/filewww/news/2023/03/06/167808147564057dc336011.jpg',
          address: 'NY, 201-279 W 42nd St',
          orderTime: '10-11 pm')
    ];
  }
}
