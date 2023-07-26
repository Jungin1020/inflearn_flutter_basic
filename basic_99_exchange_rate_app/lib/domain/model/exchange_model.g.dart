// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExchangeModel _$$_ExchangeModelFromJson(Map<String, dynamic> json) =>
    _$_ExchangeModel(
      result: json['result'] as String,
      lastUpdate: json['lastUpdate'] as String,
      nextUpdate: json['nextUpdate'] as String,
      baseCode: json['baseCode'] as String,
      conversionRates: json['conversionRates'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_ExchangeModelToJson(_$_ExchangeModel instance) =>
    <String, dynamic>{
      'result': instance.result,
      'lastUpdate': instance.lastUpdate,
      'nextUpdate': instance.nextUpdate,
      'baseCode': instance.baseCode,
      'conversionRates': instance.conversionRates,
    };
