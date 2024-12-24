// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scouting_miscellaneous_data_2024.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScoutingMiscellaneousData2024 _$ScoutingMiscellaneousData2024FromJson(
    Map<String, dynamic> json) {
  return _ScoutingMiscellaneousData2024.fromJson(json);
}

/// @nodoc
mixin _$ScoutingMiscellaneousData2024 {
  bool get died => throw _privateConstructorUsedError;
  String get comments => throw _privateConstructorUsedError;

  /// Serializes this ScoutingMiscellaneousData2024 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScoutingMiscellaneousData2024
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoutingMiscellaneousData2024CopyWith<ScoutingMiscellaneousData2024>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoutingMiscellaneousData2024CopyWith<$Res> {
  factory $ScoutingMiscellaneousData2024CopyWith(
          ScoutingMiscellaneousData2024 value,
          $Res Function(ScoutingMiscellaneousData2024) then) =
      _$ScoutingMiscellaneousData2024CopyWithImpl<$Res,
          ScoutingMiscellaneousData2024>;
  @useResult
  $Res call({bool died, String comments});
}

/// @nodoc
class _$ScoutingMiscellaneousData2024CopyWithImpl<$Res,
        $Val extends ScoutingMiscellaneousData2024>
    implements $ScoutingMiscellaneousData2024CopyWith<$Res> {
  _$ScoutingMiscellaneousData2024CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScoutingMiscellaneousData2024
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? died = null,
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      died: null == died
          ? _value.died
          : died // ignore: cast_nullable_to_non_nullable
              as bool,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoutingMiscellaneousData2024ImplCopyWith<$Res>
    implements $ScoutingMiscellaneousData2024CopyWith<$Res> {
  factory _$$ScoutingMiscellaneousData2024ImplCopyWith(
          _$ScoutingMiscellaneousData2024Impl value,
          $Res Function(_$ScoutingMiscellaneousData2024Impl) then) =
      __$$ScoutingMiscellaneousData2024ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool died, String comments});
}

/// @nodoc
class __$$ScoutingMiscellaneousData2024ImplCopyWithImpl<$Res>
    extends _$ScoutingMiscellaneousData2024CopyWithImpl<$Res,
        _$ScoutingMiscellaneousData2024Impl>
    implements _$$ScoutingMiscellaneousData2024ImplCopyWith<$Res> {
  __$$ScoutingMiscellaneousData2024ImplCopyWithImpl(
      _$ScoutingMiscellaneousData2024Impl _value,
      $Res Function(_$ScoutingMiscellaneousData2024Impl) _then)
      : super(_value, _then);

  /// Create a copy of ScoutingMiscellaneousData2024
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? died = null,
    Object? comments = null,
  }) {
    return _then(_$ScoutingMiscellaneousData2024Impl(
      died: null == died
          ? _value.died
          : died // ignore: cast_nullable_to_non_nullable
              as bool,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoutingMiscellaneousData2024Impl
    implements _ScoutingMiscellaneousData2024 {
  const _$ScoutingMiscellaneousData2024Impl(
      {required this.died, required this.comments});

  factory _$ScoutingMiscellaneousData2024Impl.fromJson(
          Map<String, dynamic> json) =>
      _$$ScoutingMiscellaneousData2024ImplFromJson(json);

  @override
  final bool died;
  @override
  final String comments;

  @override
  String toString() {
    return 'ScoutingMiscellaneousData2024(died: $died, comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoutingMiscellaneousData2024Impl &&
            (identical(other.died, died) || other.died == died) &&
            (identical(other.comments, comments) ||
                other.comments == comments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, died, comments);

  /// Create a copy of ScoutingMiscellaneousData2024
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoutingMiscellaneousData2024ImplCopyWith<
          _$ScoutingMiscellaneousData2024Impl>
      get copyWith => __$$ScoutingMiscellaneousData2024ImplCopyWithImpl<
          _$ScoutingMiscellaneousData2024Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoutingMiscellaneousData2024ImplToJson(
      this,
    );
  }
}

abstract class _ScoutingMiscellaneousData2024
    implements ScoutingMiscellaneousData2024 {
  const factory _ScoutingMiscellaneousData2024(
      {required final bool died,
      required final String comments}) = _$ScoutingMiscellaneousData2024Impl;

  factory _ScoutingMiscellaneousData2024.fromJson(Map<String, dynamic> json) =
      _$ScoutingMiscellaneousData2024Impl.fromJson;

  @override
  bool get died;
  @override
  String get comments;

  /// Create a copy of ScoutingMiscellaneousData2024
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoutingMiscellaneousData2024ImplCopyWith<
          _$ScoutingMiscellaneousData2024Impl>
      get copyWith => throw _privateConstructorUsedError;
}
