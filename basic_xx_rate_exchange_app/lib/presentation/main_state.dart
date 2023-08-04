import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'main_state.freezed.dart';

part 'main_state.g.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default({}) Map<String, dynamic> rates,
    @Default(false) bool isLoading,
    @Default(false) bool isTapped,
    @Default(1) num baseMoney,
    @Default(1) num targetMoney,
    @Default('USD') String baseCode,
    @Default('KRW') String targetCode,
    @Default('') String lastUpdateTime,
  }) = _MainState;

  factory MainState.fromJson(Map<String, Object?> json) =>
      _$MainStateFromJson(json);
}
