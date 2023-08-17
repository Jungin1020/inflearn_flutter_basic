import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'base_money.freezed.dart';

part 'base_money.g.dart';

@freezed
class BaseMoney with _$BaseMoney {
  const factory BaseMoney({
    @Default(1) double money,
  }) = _BaseMoney;

  factory BaseMoney.fromJson(Map<String, Object?> json) =>
      _$BaseMoneyFromJson(json);
}
