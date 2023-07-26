// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainState _$MainStateFromJson(Map<String, dynamic> json) {
  return _MainState.fromJson(json);
}

/// @nodoc
mixin _$MainState {
  String get baseCountry => throw _privateConstructorUsedError;
  Map<String, dynamic> get exchanges => throw _privateConstructorUsedError;
  num get baseMoney => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call(
      {String baseCountry, Map<String, dynamic> exchanges, num baseMoney});
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseCountry = null,
    Object? exchanges = null,
    Object? baseMoney = null,
  }) {
    return _then(_value.copyWith(
      baseCountry: null == baseCountry
          ? _value.baseCountry
          : baseCountry // ignore: cast_nullable_to_non_nullable
              as String,
      exchanges: null == exchanges
          ? _value.exchanges
          : exchanges // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      baseMoney: null == baseMoney
          ? _value.baseMoney
          : baseMoney // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainStateCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$$_MainStateCopyWith(
          _$_MainState value, $Res Function(_$_MainState) then) =
      __$$_MainStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String baseCountry, Map<String, dynamic> exchanges, num baseMoney});
}

/// @nodoc
class __$$_MainStateCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_MainState>
    implements _$$_MainStateCopyWith<$Res> {
  __$$_MainStateCopyWithImpl(
      _$_MainState _value, $Res Function(_$_MainState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseCountry = null,
    Object? exchanges = null,
    Object? baseMoney = null,
  }) {
    return _then(_$_MainState(
      baseCountry: null == baseCountry
          ? _value.baseCountry
          : baseCountry // ignore: cast_nullable_to_non_nullable
              as String,
      exchanges: null == exchanges
          ? _value._exchanges
          : exchanges // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      baseMoney: null == baseMoney
          ? _value.baseMoney
          : baseMoney // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainState with DiagnosticableTreeMixin implements _MainState {
  const _$_MainState(
      {this.baseCountry = 'KWD',
      final Map<String, dynamic> exchanges = const {},
      this.baseMoney = 1})
      : _exchanges = exchanges;

  factory _$_MainState.fromJson(Map<String, dynamic> json) =>
      _$$_MainStateFromJson(json);

  @override
  @JsonKey()
  final String baseCountry;
  final Map<String, dynamic> _exchanges;
  @override
  @JsonKey()
  Map<String, dynamic> get exchanges {
    if (_exchanges is EqualUnmodifiableMapView) return _exchanges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_exchanges);
  }

  @override
  @JsonKey()
  final num baseMoney;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState(baseCountry: $baseCountry, exchanges: $exchanges, baseMoney: $baseMoney)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainState'))
      ..add(DiagnosticsProperty('baseCountry', baseCountry))
      ..add(DiagnosticsProperty('exchanges', exchanges))
      ..add(DiagnosticsProperty('baseMoney', baseMoney));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainState &&
            (identical(other.baseCountry, baseCountry) ||
                other.baseCountry == baseCountry) &&
            const DeepCollectionEquality()
                .equals(other._exchanges, _exchanges) &&
            (identical(other.baseMoney, baseMoney) ||
                other.baseMoney == baseMoney));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, baseCountry,
      const DeepCollectionEquality().hash(_exchanges), baseMoney);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainStateCopyWith<_$_MainState> get copyWith =>
      __$$_MainStateCopyWithImpl<_$_MainState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainStateToJson(
      this,
    );
  }
}

abstract class _MainState implements MainState {
  const factory _MainState(
      {final String baseCountry,
      final Map<String, dynamic> exchanges,
      final num baseMoney}) = _$_MainState;

  factory _MainState.fromJson(Map<String, dynamic> json) =
      _$_MainState.fromJson;

  @override
  String get baseCountry;
  @override
  Map<String, dynamic> get exchanges;
  @override
  num get baseMoney;
  @override
  @JsonKey(ignore: true)
  _$$_MainStateCopyWith<_$_MainState> get copyWith =>
      throw _privateConstructorUsedError;
}
