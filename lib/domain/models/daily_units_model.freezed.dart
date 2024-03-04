// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_units_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DailyUnitsModel {
  String get time => throw _privateConstructorUsedError;
  String get weatherCode => throw _privateConstructorUsedError;
  String get temperature2MMax => throw _privateConstructorUsedError;
  String get temperature2MMin => throw _privateConstructorUsedError;
  String get sunrise => throw _privateConstructorUsedError;
  String get sunset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DailyUnitsModelCopyWith<DailyUnitsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyUnitsModelCopyWith<$Res> {
  factory $DailyUnitsModelCopyWith(
          DailyUnitsModel value, $Res Function(DailyUnitsModel) then) =
      _$DailyUnitsModelCopyWithImpl<$Res, DailyUnitsModel>;
  @useResult
  $Res call(
      {String time,
      String weatherCode,
      String temperature2MMax,
      String temperature2MMin,
      String sunrise,
      String sunset});
}

/// @nodoc
class _$DailyUnitsModelCopyWithImpl<$Res, $Val extends DailyUnitsModel>
    implements $DailyUnitsModelCopyWith<$Res> {
  _$DailyUnitsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? weatherCode = null,
    Object? temperature2MMax = null,
    Object? temperature2MMin = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2MMax: null == temperature2MMax
          ? _value.temperature2MMax
          : temperature2MMax // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2MMin: null == temperature2MMin
          ? _value.temperature2MMin
          : temperature2MMin // ignore: cast_nullable_to_non_nullable
              as String,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyUnitsModelImplCopyWith<$Res>
    implements $DailyUnitsModelCopyWith<$Res> {
  factory _$$DailyUnitsModelImplCopyWith(_$DailyUnitsModelImpl value,
          $Res Function(_$DailyUnitsModelImpl) then) =
      __$$DailyUnitsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String time,
      String weatherCode,
      String temperature2MMax,
      String temperature2MMin,
      String sunrise,
      String sunset});
}

/// @nodoc
class __$$DailyUnitsModelImplCopyWithImpl<$Res>
    extends _$DailyUnitsModelCopyWithImpl<$Res, _$DailyUnitsModelImpl>
    implements _$$DailyUnitsModelImplCopyWith<$Res> {
  __$$DailyUnitsModelImplCopyWithImpl(
      _$DailyUnitsModelImpl _value, $Res Function(_$DailyUnitsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? weatherCode = null,
    Object? temperature2MMax = null,
    Object? temperature2MMin = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_$DailyUnitsModelImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2MMax: null == temperature2MMax
          ? _value.temperature2MMax
          : temperature2MMax // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2MMin: null == temperature2MMin
          ? _value.temperature2MMin
          : temperature2MMin // ignore: cast_nullable_to_non_nullable
              as String,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DailyUnitsModelImpl implements _DailyUnitsModel {
  const _$DailyUnitsModelImpl(
      {required this.time,
      required this.weatherCode,
      required this.temperature2MMax,
      required this.temperature2MMin,
      required this.sunrise,
      required this.sunset});

  @override
  final String time;
  @override
  final String weatherCode;
  @override
  final String temperature2MMax;
  @override
  final String temperature2MMin;
  @override
  final String sunrise;
  @override
  final String sunset;

  @override
  String toString() {
    return 'DailyUnitsModel(time: $time, weatherCode: $weatherCode, temperature2MMax: $temperature2MMax, temperature2MMin: $temperature2MMin, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyUnitsModelImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.weatherCode, weatherCode) ||
                other.weatherCode == weatherCode) &&
            (identical(other.temperature2MMax, temperature2MMax) ||
                other.temperature2MMax == temperature2MMax) &&
            (identical(other.temperature2MMin, temperature2MMin) ||
                other.temperature2MMin == temperature2MMin) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time, weatherCode,
      temperature2MMax, temperature2MMin, sunrise, sunset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyUnitsModelImplCopyWith<_$DailyUnitsModelImpl> get copyWith =>
      __$$DailyUnitsModelImplCopyWithImpl<_$DailyUnitsModelImpl>(
          this, _$identity);
}

abstract class _DailyUnitsModel implements DailyUnitsModel {
  const factory _DailyUnitsModel(
      {required final String time,
      required final String weatherCode,
      required final String temperature2MMax,
      required final String temperature2MMin,
      required final String sunrise,
      required final String sunset}) = _$DailyUnitsModelImpl;

  @override
  String get time;
  @override
  String get weatherCode;
  @override
  String get temperature2MMax;
  @override
  String get temperature2MMin;
  @override
  String get sunrise;
  @override
  String get sunset;
  @override
  @JsonKey(ignore: true)
  _$$DailyUnitsModelImplCopyWith<_$DailyUnitsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
