import 'menu.dart';

import 'package:json_annotation/json_annotation.dart';
part 'restaurant.g.dart';

@JsonSerializable(explicitToJson: true)
class Restaurant {
  int id;
  String name;
  String category;
  String description;
  String categoryDetail;
  String address;
  double distance;
  double stars;
  List<Menu> menus;
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
      required this.menus,
      required this.imgUrl});

  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantToJson(this);
}
