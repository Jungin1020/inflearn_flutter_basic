import 'package:json_annotation/json_annotation.dart';

part 'menu.g.dart';

@JsonSerializable(explicitToJson: true)
class Menu {
  int id;
  String name;
  int price;
  int weight;
  int calories;
  List<String> ingredients;
  String imageUrl;

  Menu(
      {required this.id,
      required this.name,
      required this.price,
      required this.weight,
      required this.calories,
      required this.ingredients,
      required this.imageUrl});

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);

  Map<String, dynamic> toJson() => _$MenuToJson(this);
}
