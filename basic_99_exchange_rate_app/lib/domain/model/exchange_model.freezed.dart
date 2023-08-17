// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExchangeModel _$ExchangeModelFromJson(Map<String, dynamic> json) {
  return _ExchangeModel.fromJson(json);
}

/// @nodoc
mixin _$ExchangeModel {
  String get result => throw _privateConstructorUsedError;
  String get lastUpdate => throw _privateConstructorUsedError;
  String get nextUpdate => throw _privateConstructorUsedError;
  String get baseCode => throw _privateConstructorUsedError;
  Map<String, dynamic> get conversionRates =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeModelCopyWith<ExchangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeModelCopyWith<$Res> {
  factory $ExchangeModelCopyWith(
          ExchangeModel value, $Res Function(ExchangeModel) then) =
      _$ExchangeModelCopyWithImpl<$Res, ExchangeModel>;
  @useResult
  $Res call(
      {String result,
      String lastUpdate,
      String nextUpdate,
      String baseCode,
      Map<String, dynamic> conversionRates});
}

/// @nodoc
class _$ExchangeModelCopyWithImpl<$Res, $Val extends ExchangeModel>
    implements $ExchangeModelCopyWith<$Res> {
  _$ExchangeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? lastUpdate = null,
    Object? nextUpdate = null,
    Object? baseCode = null,
    Object? conversionRates = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as String,
      nextUpdate: null == nextUpdate
          ? _value.nextUpdate
          : nextUpdate // ignore: cast_nullable_to_non_nullable
              as String,
      baseCode: null == baseCode
          ? _value.baseCode
          : baseCode // ignore: cast_nullable_to_non_nullable
              as String,
      conversionRates: null == conversionRates
          ? _value.conversionRates
          : conversionRates // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExchangeModelCopyWith<$Res>
    implements $ExchangeModelCopyWith<$Res> {
  factory _$$_ExchangeModelCopyWith(
          _$_ExchangeModel value, $Res Function(_$_ExchangeModel) then) =
      __$$_ExchangeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String result,
      String lastUpdate,
      String nextUpdate,
      String baseCode,
      Map<String, dynamic> conversionRates});
}

/// @nodoc
class __$$_ExchangeModelCopyWithImpl<$Res>
    extends _$ExchangeModelCopyWithImpl<$Res, _$_ExchangeModel>
    implements _$$_ExchangeModelCopyWith<$Res> {
  __$$_ExchangeModelCopyWithImpl(
      _$_ExchangeModel _value, $Res Function(_$_ExchangeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? lastUpdate = null,
    Object? nextUpdate = null,
    Object? baseCode = null,
    Object? conversionRates = null,
  }) {
    return _then(_$_ExchangeModel(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as String,
      nextUpdate: null == nextUpdate
          ? _value.nextUpdate
          : nextUpdate // ignore: cast_nullable_to_non_nullable
              as String,
      baseCode: null == baseCode
          ? _value.baseCode
          : baseCode // ignore: cast_nullable_to_non_nullable
              as String,
      conversionRates: null == conversionRates
          ? _value._conversionRates
          : conversionRates // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExchangeModel with DiagnosticableTreeMixin implements _ExchangeModel {
  const _$_ExchangeModel(
      {required this.result,
      required this.lastUpdate,
      required this.nextUpdate,
      required this.baseCode,
      required final Map<String, dynamic> conversionRates})
      : _conversionRates = conversionRates;

  factory _$_ExchangeModel.fromJson(Map<String, dynamic> json) =>
      _$$_ExchangeModelFromJson(json);

  @override
  final String result;
  @override
  final String lastUpdate;
  @override
  final String nextUpdate;
  @override
  final String baseCode;
  final Map<String, dynamic> _conversionRates;
  @override
  Map<String, dynamic> get conversionRates {
    if (_conversionRates is EqualUnmodifiableMapView) return _conversionRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_conversionRates);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExchangeModel(result: $result, lastUpdate: $lastUpdate, nextUpdate: $nextUpdate, baseCode: $baseCode, conversionRates: $conversionRates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExchangeModel'))
      ..add(DiagnosticsProperty('result', result))
      ..add(DiagnosticsProperty('lastUpdate', lastUpdate))
      ..add(DiagnosticsProperty('nextUpdate', nextUpdate))
      ..add(DiagnosticsProperty('baseCode', baseCode))
      ..add(DiagnosticsProperty('conversionRates', conversionRates));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangeModel &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.nextUpdate, nextUpdate) ||
                other.nextUpdate == nextUpdate) &&
            (identical(other.baseCode, baseCode) ||
                other.baseCode == baseCode) &&
            const DeepCollectionEquality()
                .equals(other._conversionRates, _conversionRates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result, lastUpdate, nextUpdate,
      baseCode, const DeepCollectionEquality().hash(_conversionRates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangeModelCopyWith<_$_ExchangeModel> get copyWith =>
      __$$_ExchangeModelCopyWithImpl<_$_ExchangeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExchangeModelToJson(
      this,
    );
  }
}

abstract class _ExchangeModel implements ExchangeModel {
  const factory _ExchangeModel(
      {required final String result,
      required final String lastUpdate,
      required final String nextUpdate,
      required final String baseCode,
      required final Map<String, dynamic> conversionRates}) = _$_ExchangeModel;

  factory _ExchangeModel.fromJson(Map<String, dynamic> json) =
      _$_ExchangeModel.fromJson;

  @override
  String get result;
  @override
  String get lastUpdate;
  @override
  String get nextUpdate;
  @override
  String get baseCode;
  @override
  Map<String, dynamic> get conversionRates;
  @override
  @JsonKey(ignore: true)
  _$$_ExchangeModelCopyWith<_$_ExchangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
