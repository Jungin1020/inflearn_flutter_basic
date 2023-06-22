// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Menu _$MenuFromJson(Map<String, dynamic> json) => Menu(
      id: json['id'] as int,
      name: json['name'] as String,
      price: json['price'] as int,
      weight: json['weight'] as int,
      calories: json['calories'] as int,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$MenuToJson(Menu instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'weight': instance.weight,
      'calories': instance.calories,
      'ingredients': instance.ingredients,
      'imageUrl': instance.imageUrl,
    };
