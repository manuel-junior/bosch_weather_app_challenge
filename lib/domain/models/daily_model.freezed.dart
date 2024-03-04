// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DailyModel {
  List<DateTime> get time => throw _privateConstructorUsedError;
  List<int> get weatherCode => throw _privateConstructorUsedError;
  List<double> get temperature2MMax => throw _privateConstructorUsedError;
  List<double> get temperature2MMin => throw _privateConstructorUsedError;
  List<DateTime> get sunrise => throw _privateConstructorUsedError;
  List<DateTime> get sunset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DailyModelCopyWith<DailyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyModelCopyWith<$Res> {
  factory $DailyModelCopyWith(
          DailyModel value, $Res Function(DailyModel) then) =
      _$DailyModelCopyWithImpl<$Res, DailyModel>;
  @useResult
  $Res call(
      {List<DateTime> time,
      List<int> weatherCode,
      List<double> temperature2MMax,
      List<double> temperature2MMin,
      List<DateTime> sunrise,
      List<DateTime> sunset});
}

/// @nodoc
class _$DailyModelCopyWithImpl<$Res, $Val extends DailyModel>
    implements $DailyModelCopyWith<$Res> {
  _$DailyModelCopyWithImpl(this._value, this._then);

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
              as List<DateTime>,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>,
      temperature2MMax: null == temperature2MMax
          ? _value.temperature2MMax
          : temperature2MMax // ignore: cast_nullable_to_non_nullable
              as List<double>,
      temperature2MMin: null == temperature2MMin
          ? _value.temperature2MMin
          : temperature2MMin // ignore: cast_nullable_to_non_nullable
              as List<double>,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyModelImplCopyWith<$Res>
    implements $DailyModelCopyWith<$Res> {
  factory _$$DailyModelImplCopyWith(
          _$DailyModelImpl value, $Res Function(_$DailyModelImpl) then) =
      __$$DailyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DateTime> time,
      List<int> weatherCode,
      List<double> temperature2MMax,
      List<double> temperature2MMin,
      List<DateTime> sunrise,
      List<DateTime> sunset});
}

/// @nodoc
class __$$DailyModelImplCopyWithImpl<$Res>
    extends _$DailyModelCopyWithImpl<$Res, _$DailyModelImpl>
    implements _$$DailyModelImplCopyWith<$Res> {
  __$$DailyModelImplCopyWithImpl(
      _$DailyModelImpl _value, $Res Function(_$DailyModelImpl) _then)
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
    return _then(_$DailyModelImpl(
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      weatherCode: null == weatherCode
          ? _value._weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<int>,
      temperature2MMax: null == temperature2MMax
          ? _value._temperature2MMax
          : temperature2MMax // ignore: cast_nullable_to_non_nullable
              as List<double>,
      temperature2MMin: null == temperature2MMin
          ? _value._temperature2MMin
          : temperature2MMin // ignore: cast_nullable_to_non_nullable
              as List<double>,
      sunrise: null == sunrise
          ? _value._sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      sunset: null == sunset
          ? _value._sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc

class _$DailyModelImpl implements _DailyModel {
  const _$DailyModelImpl(
      {required final List<DateTime> time,
      required final List<int> weatherCode,
      required final List<double> temperature2MMax,
      required final List<double> temperature2MMin,
      required final List<DateTime> sunrise,
      required final List<DateTime> sunset})
      : _time = time,
        _weatherCode = weatherCode,
        _temperature2MMax = temperature2MMax,
        _temperature2MMin = temperature2MMin,
        _sunrise = sunrise,
        _sunset = sunset;

  final List<DateTime> _time;
  @override
  List<DateTime> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<int> _weatherCode;
  @override
  List<int> get weatherCode {
    if (_weatherCode is EqualUnmodifiableListView) return _weatherCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherCode);
  }

  final List<double> _temperature2MMax;
  @override
  List<double> get temperature2MMax {
    if (_temperature2MMax is EqualUnmodifiableListView)
      return _temperature2MMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature2MMax);
  }

  final List<double> _temperature2MMin;
  @override
  List<double> get temperature2MMin {
    if (_temperature2MMin is EqualUnmodifiableListView)
      return _temperature2MMin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature2MMin);
  }

  final List<DateTime> _sunrise;
  @override
  List<DateTime> get sunrise {
    if (_sunrise is EqualUnmodifiableListView) return _sunrise;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sunrise);
  }

  final List<DateTime> _sunset;
  @override
  List<DateTime> get sunset {
    if (_sunset is EqualUnmodifiableListView) return _sunset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sunset);
  }

  @override
  String toString() {
    return 'DailyModel(time: $time, weatherCode: $weatherCode, temperature2MMax: $temperature2MMax, temperature2MMin: $temperature2MMin, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyModelImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._weatherCode, _weatherCode) &&
            const DeepCollectionEquality()
                .equals(other._temperature2MMax, _temperature2MMax) &&
            const DeepCollectionEquality()
                .equals(other._temperature2MMin, _temperature2MMin) &&
            const DeepCollectionEquality().equals(other._sunrise, _sunrise) &&
            const DeepCollectionEquality().equals(other._sunset, _sunset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_weatherCode),
      const DeepCollectionEquality().hash(_temperature2MMax),
      const DeepCollectionEquality().hash(_temperature2MMin),
      const DeepCollectionEquality().hash(_sunrise),
      const DeepCollectionEquality().hash(_sunset));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyModelImplCopyWith<_$DailyModelImpl> get copyWith =>
      __$$DailyModelImplCopyWithImpl<_$DailyModelImpl>(this, _$identity);
}

abstract class _DailyModel implements DailyModel {
  const factory _DailyModel(
      {required final List<DateTime> time,
      required final List<int> weatherCode,
      required final List<double> temperature2MMax,
      required final List<double> temperature2MMin,
      required final List<DateTime> sunrise,
      required final List<DateTime> sunset}) = _$DailyModelImpl;

  @override
  List<DateTime> get time;
  @override
  List<int> get weatherCode;
  @override
  List<double> get temperature2MMax;
  @override
  List<double> get temperature2MMin;
  @override
  List<DateTime> get sunrise;
  @override
  List<DateTime> get sunset;
  @override
  @JsonKey(ignore: true)
  _$$DailyModelImplCopyWith<_$DailyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
