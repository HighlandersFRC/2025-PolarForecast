// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scout_info_2024.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScoutInfo2024 _$ScoutInfo2024FromJson(Map<String, dynamic> json) {
  return _ScoutInfo2024.fromJson(json);
}

/// @nodoc
mixin _$ScoutInfo2024 {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this ScoutInfo2024 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScoutInfo2024
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoutInfo2024CopyWith<ScoutInfo2024> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoutInfo2024CopyWith<$Res> {
  factory $ScoutInfo2024CopyWith(
          ScoutInfo2024 value, $Res Function(ScoutInfo2024) then) =
      _$ScoutInfo2024CopyWithImpl<$Res, ScoutInfo2024>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$ScoutInfo2024CopyWithImpl<$Res, $Val extends ScoutInfo2024>
    implements $ScoutInfo2024CopyWith<$Res> {
  _$ScoutInfo2024CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScoutInfo2024
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoutInfo2024ImplCopyWith<$Res>
    implements $ScoutInfo2024CopyWith<$Res> {
  factory _$$ScoutInfo2024ImplCopyWith(
          _$ScoutInfo2024Impl value, $Res Function(_$ScoutInfo2024Impl) then) =
      __$$ScoutInfo2024ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$ScoutInfo2024ImplCopyWithImpl<$Res>
    extends _$ScoutInfo2024CopyWithImpl<$Res, _$ScoutInfo2024Impl>
    implements _$$ScoutInfo2024ImplCopyWith<$Res> {
  __$$ScoutInfo2024ImplCopyWithImpl(
      _$ScoutInfo2024Impl _value, $Res Function(_$ScoutInfo2024Impl) _then)
      : super(_value, _then);

  /// Create a copy of ScoutInfo2024
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$ScoutInfo2024Impl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoutInfo2024Impl implements _ScoutInfo2024 {
  const _$ScoutInfo2024Impl({required this.name});

  factory _$ScoutInfo2024Impl.fromJson(Map<String, dynamic> json) =>
      _$$ScoutInfo2024ImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'ScoutInfo2024(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoutInfo2024Impl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of ScoutInfo2024
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoutInfo2024ImplCopyWith<_$ScoutInfo2024Impl> get copyWith =>
      __$$ScoutInfo2024ImplCopyWithImpl<_$ScoutInfo2024Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoutInfo2024ImplToJson(
      this,
    );
  }
}

abstract class _ScoutInfo2024 implements ScoutInfo2024 {
  const factory _ScoutInfo2024({required final String name}) =
      _$ScoutInfo2024Impl;

  factory _ScoutInfo2024.fromJson(Map<String, dynamic> json) =
      _$ScoutInfo2024Impl.fromJson;

  @override
  String get name;

  /// Create a copy of ScoutInfo2024
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoutInfo2024ImplCopyWith<_$ScoutInfo2024Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
