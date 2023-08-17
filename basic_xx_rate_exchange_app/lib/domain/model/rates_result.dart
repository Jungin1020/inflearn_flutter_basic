import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'rates_result.freezed.dart';

part 'rates_result.g.dart';

@freezed
class RatesResult with _$RatesResult {
  const factory RatesResult({
    required String lastUpdateTime,
    required String nextUpdateTime,
    required Map<String, dynamic> rates,
  }) = _RatesResult;

  factory RatesResult.fromJson(Map<String, Object?> json) =>
      _$RatesResultFromJson(json);
}
