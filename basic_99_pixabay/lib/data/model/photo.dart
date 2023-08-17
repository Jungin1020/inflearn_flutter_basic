import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

part 'photo.g.dart';

@JsonSerializable(explicitToJson: true)
class Photo {
  final int id;
  final String largeImageURL;

  Photo({
    required this.id,
    required this.largeImageURL,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}
