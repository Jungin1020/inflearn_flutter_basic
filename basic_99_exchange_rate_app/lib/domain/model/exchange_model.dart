import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'exchange_model.freezed.dart';

part 'exchange_model.g.dart';

@freezed
class ExchangeModel with _$ExchangeModel {
  const factory ExchangeModel({
    required String result,
    required String lastUpdate,
    required String nextUpdate,
    required String baseCode,
    required Map<String, dynamic> conversionRates,
  }) = _ExchangeModel;

  factory ExchangeModel.fromJson(Map<String, Object?> json) =>
      _$ExchangeModelFromJson(json);
}
