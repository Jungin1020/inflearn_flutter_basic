// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) => Restaurant(
      id: json['id'] as int,
      name: json['name'] as String,
      category: json['category'] as String,
      description: json['description'] as String,
      categoryDetail: json['categoryDetail'] as String,
      address: json['address'] as String,
      distance: (json['distance'] as num).toDouble(),
      stars: (json['stars'] as num).toDouble(),
      menus: (json['menus'] as List<dynamic>)
          .map((e) => Menu.fromJson(e as Map<String, dynamic>))
          .toList(),
      imgUrl: json['imgUrl'] as String,
    );

Map<String, dynamic> _$RestaurantToJson(Restaurant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'description': instance.description,
      'categoryDetail': instance.categoryDetail,
      'address': instance.address,
      'distance': instance.distance,
      'stars': instance.stars,
      'menus': instance.menus.map((e) => e.toJson()).toList(),
      'imgUrl': instance.imgUrl,
    };
