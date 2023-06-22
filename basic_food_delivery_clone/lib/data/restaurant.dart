import 'menu.dart';

class Restaurant {
  int id;
  String name;
  String category;
  String description;
  String categoryDetail;
  String address;
  double distance;
  double stars;
  List<Menu> menu;
  String imgUrl;

  Restaurant(
      {required this.id,
      required this.name,
      required this.category,
      required this.description,
      required this.categoryDetail,
      required this.address,
      required this.distance,
      required this.stars,
      required this.menu,
      required this.imgUrl});
}
