// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_money.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseMoney _$BaseMoneyFromJson(Map<String, dynamic> json) {
  return _BaseMoney.fromJson(json);
}

/// @nodoc
mixin _$BaseMoney {
  double get money => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseMoneyCopyWith<BaseMoney> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseMoneyCopyWith<$Res> {
  factory $BaseMoneyCopyWith(BaseMoney value, $Res Function(BaseMoney) then) =
      _$BaseMoneyCopyWithImpl<$Res, BaseMoney>;
  @useResult
  $Res call({double money});
}

/// @nodoc
class _$BaseMoneyCopyWithImpl<$Res, $Val extends BaseMoney>
    implements $BaseMoneyCopyWith<$Res> {
  _$BaseMoneyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? money = null,
  }) {
    return _then(_value.copyWith(
      money: null == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BaseMoneyCopyWith<$Res> implements $BaseMoneyCopyWith<$Res> {
  factory _$$_BaseMoneyCopyWith(
          _$_BaseMoney value, $Res Function(_$_BaseMoney) then) =
      __$$_BaseMoneyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double money});
}

/// @nodoc
class __$$_BaseMoneyCopyWithImpl<$Res>
    extends _$BaseMoneyCopyWithImpl<$Res, _$_BaseMoney>
    implements _$$_BaseMoneyCopyWith<$Res> {
  __$$_BaseMoneyCopyWithImpl(
      _$_BaseMoney _value, $Res Function(_$_BaseMoney) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? money = null,
  }) {
    return _then(_$_BaseMoney(
      money: null == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseMoney with DiagnosticableTreeMixin implements _BaseMoney {
  const _$_BaseMoney({this.money = 1});

  factory _$_BaseMoney.fromJson(Map<String, dynamic> json) =>
      _$$_BaseMoneyFromJson(json);

  @override
  @JsonKey()
  final double money;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BaseMoney(money: $money)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BaseMoney'))
      ..add(DiagnosticsProperty('money', money));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseMoney &&
            (identical(other.money, money) || other.money == money));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, money);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BaseMoneyCopyWith<_$_BaseMoney> get copyWith =>
      __$$_BaseMoneyCopyWithImpl<_$_BaseMoney>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseMoneyToJson(
      this,
    );
  }
}

abstract class _BaseMoney implements BaseMoney {
  const factory _BaseMoney({final double money}) = _$_BaseMoney;

  factory _BaseMoney.fromJson(Map<String, dynamic> json) =
      _$_BaseMoney.fromJson;

  @override
  double get money;
  @override
  @JsonKey(ignore: true)
  _$$_BaseMoneyCopyWith<_$_BaseMoney> get copyWith =>
      throw _privateConstructorUsedError;
}
