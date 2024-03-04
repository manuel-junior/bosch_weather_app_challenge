// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'colors_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ColorsModel {
  Color get status => throw _privateConstructorUsedError;
  Color get background => throw _privateConstructorUsedError;
  Color get divider => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ColorsModelCopyWith<ColorsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorsModelCopyWith<$Res> {
  factory $ColorsModelCopyWith(
          ColorsModel value, $Res Function(ColorsModel) then) =
      _$ColorsModelCopyWithImpl<$Res, ColorsModel>;
  @useResult
  $Res call({Color status, Color background, Color divider});
}

/// @nodoc
class _$ColorsModelCopyWithImpl<$Res, $Val extends ColorsModel>
    implements $ColorsModelCopyWith<$Res> {
  _$ColorsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? background = null,
    Object? divider = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Color,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as Color,
      divider: null == divider
          ? _value.divider
          : divider // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorsModelImplCopyWith<$Res>
    implements $ColorsModelCopyWith<$Res> {
  factory _$$ColorsModelImplCopyWith(
          _$ColorsModelImpl value, $Res Function(_$ColorsModelImpl) then) =
      __$$ColorsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color status, Color background, Color divider});
}

/// @nodoc
class __$$ColorsModelImplCopyWithImpl<$Res>
    extends _$ColorsModelCopyWithImpl<$Res, _$ColorsModelImpl>
    implements _$$ColorsModelImplCopyWith<$Res> {
  __$$ColorsModelImplCopyWithImpl(
      _$ColorsModelImpl _value, $Res Function(_$ColorsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? background = null,
    Object? divider = null,
  }) {
    return _then(_$ColorsModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Color,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as Color,
      divider: null == divider
          ? _value.divider
          : divider // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$ColorsModelImpl implements _ColorsModel {
  const _$ColorsModelImpl(
      {required this.status, required this.background, required this.divider});

  @override
  final Color status;
  @override
  final Color background;
  @override
  final Color divider;

  @override
  String toString() {
    return 'ColorsModel(status: $status, background: $background, divider: $divider)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.divider, divider) || other.divider == divider));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, background, divider);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorsModelImplCopyWith<_$ColorsModelImpl> get copyWith =>
      __$$ColorsModelImplCopyWithImpl<_$ColorsModelImpl>(this, _$identity);
}

abstract class _ColorsModel implements ColorsModel {
  const factory _ColorsModel(
      {required final Color status,
      required final Color background,
      required final Color divider}) = _$ColorsModelImpl;

  @override
  Color get status;
  @override
  Color get background;
  @override
  Color get divider;
  @override
  @JsonKey(ignore: true)
  _$$ColorsModelImplCopyWith<_$ColorsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
