// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainState _$$_MainStateFromJson(Map<String, dynamic> json) => _$_MainState(
      baseCountry: json['baseCountry'] as String? ?? 'KWD',
      exchanges: json['exchanges'] as Map<String, dynamic>? ?? const {},
      baseMoney: json['baseMoney'] as num? ?? 1,
    );

Map<String, dynamic> _$$_MainStateToJson(_$_MainState instance) =>
    <String, dynamic>{
      'baseCountry': instance.baseCountry,
      'exchanges': instance.exchanges,
      'baseMoney': instance.baseMoney,
    };
