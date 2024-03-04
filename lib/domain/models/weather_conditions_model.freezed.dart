// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_conditions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherConditionModel {
  int get code => throw _privateConstructorUsedError;
  String get descriptionDay => throw _privateConstructorUsedError;
  String get descriptionNight => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherConditionModelCopyWith<WeatherConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherConditionModelCopyWith<$Res> {
  factory $WeatherConditionModelCopyWith(WeatherConditionModel value,
          $Res Function(WeatherConditionModel) then) =
      _$WeatherConditionModelCopyWithImpl<$Res, WeatherConditionModel>;
  @useResult
  $Res call({int code, String descriptionDay, String descriptionNight});
}

/// @nodoc
class _$WeatherConditionModelCopyWithImpl<$Res,
        $Val extends WeatherConditionModel>
    implements $WeatherConditionModelCopyWith<$Res> {
  _$WeatherConditionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? descriptionDay = null,
    Object? descriptionNight = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      descriptionDay: null == descriptionDay
          ? _value.descriptionDay
          : descriptionDay // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionNight: null == descriptionNight
          ? _value.descriptionNight
          : descriptionNight // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherConditionModelImplCopyWith<$Res>
    implements $WeatherConditionModelCopyWith<$Res> {
  factory _$$WeatherConditionModelImplCopyWith(
          _$WeatherConditionModelImpl value,
          $Res Function(_$WeatherConditionModelImpl) then) =
      __$$WeatherConditionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String descriptionDay, String descriptionNight});
}

/// @nodoc
class __$$WeatherConditionModelImplCopyWithImpl<$Res>
    extends _$WeatherConditionModelCopyWithImpl<$Res,
        _$WeatherConditionModelImpl>
    implements _$$WeatherConditionModelImplCopyWith<$Res> {
  __$$WeatherConditionModelImplCopyWithImpl(_$WeatherConditionModelImpl _value,
      $Res Function(_$WeatherConditionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? descriptionDay = null,
    Object? descriptionNight = null,
  }) {
    return _then(_$WeatherConditionModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      descriptionDay: null == descriptionDay
          ? _value.descriptionDay
          : descriptionDay // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionNight: null == descriptionNight
          ? _value.descriptionNight
          : descriptionNight // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WeatherConditionModelImpl implements _WeatherConditionModel {
  const _$WeatherConditionModelImpl(
      {required this.code,
      required this.descriptionDay,
      required this.descriptionNight});

  @override
  final int code;
  @override
  final String descriptionDay;
  @override
  final String descriptionNight;

  @override
  String toString() {
    return 'WeatherConditionModel(code: $code, descriptionDay: $descriptionDay, descriptionNight: $descriptionNight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherConditionModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.descriptionDay, descriptionDay) ||
                other.descriptionDay == descriptionDay) &&
            (identical(other.descriptionNight, descriptionNight) ||
                other.descriptionNight == descriptionNight));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, code, descriptionDay, descriptionNight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherConditionModelImplCopyWith<_$WeatherConditionModelImpl>
      get copyWith => __$$WeatherConditionModelImplCopyWithImpl<
          _$WeatherConditionModelImpl>(this, _$identity);
}

abstract class _WeatherConditionModel implements WeatherConditionModel {
  const factory _WeatherConditionModel(
      {required final int code,
      required final String descriptionDay,
      required final String descriptionNight}) = _$WeatherConditionModelImpl;

  @override
  int get code;
  @override
  String get descriptionDay;
  @override
  String get descriptionNight;
  @override
  @JsonKey(ignore: true)
  _$$WeatherConditionModelImplCopyWith<_$WeatherConditionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
