// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scouting_auto_data_2024.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScoutingAutoData2024 _$ScoutingAutoData2024FromJson(Map<String, dynamic> json) {
  return _ScoutingAutoData2024.fromJson(json);
}

/// @nodoc
mixin _$ScoutingAutoData2024 {
  int get amp => throw _privateConstructorUsedError;
  int get speaker => throw _privateConstructorUsedError;

  /// Serializes this ScoutingAutoData2024 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScoutingAutoData2024
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoutingAutoData2024CopyWith<ScoutingAutoData2024> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoutingAutoData2024CopyWith<$Res> {
  factory $ScoutingAutoData2024CopyWith(ScoutingAutoData2024 value,
          $Res Function(ScoutingAutoData2024) then) =
      _$ScoutingAutoData2024CopyWithImpl<$Res, ScoutingAutoData2024>;
  @useResult
  $Res call({int amp, int speaker});
}

/// @nodoc
class _$ScoutingAutoData2024CopyWithImpl<$Res,
        $Val extends ScoutingAutoData2024>
    implements $ScoutingAutoData2024CopyWith<$Res> {
  _$ScoutingAutoData2024CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScoutingAutoData2024
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amp = null,
    Object? speaker = null,
  }) {
    return _then(_value.copyWith(
      amp: null == amp
          ? _value.amp
          : amp // ignore: cast_nullable_to_non_nullable
              as int,
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoutingAutoData2024ImplCopyWith<$Res>
    implements $ScoutingAutoData2024CopyWith<$Res> {
  factory _$$ScoutingAutoData2024ImplCopyWith(_$ScoutingAutoData2024Impl value,
          $Res Function(_$ScoutingAutoData2024Impl) then) =
      __$$ScoutingAutoData2024ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int amp, int speaker});
}

/// @nodoc
class __$$ScoutingAutoData2024ImplCopyWithImpl<$Res>
    extends _$ScoutingAutoData2024CopyWithImpl<$Res, _$ScoutingAutoData2024Impl>
    implements _$$ScoutingAutoData2024ImplCopyWith<$Res> {
  __$$ScoutingAutoData2024ImplCopyWithImpl(_$ScoutingAutoData2024Impl _value,
      $Res Function(_$ScoutingAutoData2024Impl) _then)
      : super(_value, _then);

  /// Create a copy of ScoutingAutoData2024
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amp = null,
    Object? speaker = null,
  }) {
    return _then(_$ScoutingAutoData2024Impl(
      amp: null == amp
          ? _value.amp
          : amp // ignore: cast_nullable_to_non_nullable
              as int,
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoutingAutoData2024Impl implements _ScoutingAutoData2024 {
  const _$ScoutingAutoData2024Impl({required this.amp, required this.speaker});

  factory _$ScoutingAutoData2024Impl.fromJson(Map<String, dynamic> json) =>
      _$$ScoutingAutoData2024ImplFromJson(json);

  @override
  final int amp;
  @override
  final int speaker;

  @override
  String toString() {
    return 'ScoutingAutoData2024(amp: $amp, speaker: $speaker)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoutingAutoData2024Impl &&
            (identical(other.amp, amp) || other.amp == amp) &&
            (identical(other.speaker, speaker) || other.speaker == speaker));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amp, speaker);

  /// Create a copy of ScoutingAutoData2024
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoutingAutoData2024ImplCopyWith<_$ScoutingAutoData2024Impl>
      get copyWith =>
          __$$ScoutingAutoData2024ImplCopyWithImpl<_$ScoutingAutoData2024Impl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoutingAutoData2024ImplToJson(
      this,
    );
  }
}

abstract class _ScoutingAutoData2024 implements ScoutingAutoData2024 {
  const factory _ScoutingAutoData2024(
      {required final int amp,
      required final int speaker}) = _$ScoutingAutoData2024Impl;

  factory _ScoutingAutoData2024.fromJson(Map<String, dynamic> json) =
      _$ScoutingAutoData2024Impl.fromJson;

  @override
  int get amp;
  @override
  int get speaker;

  /// Create a copy of ScoutingAutoData2024
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoutingAutoData2024ImplCopyWith<_$ScoutingAutoData2024Impl>
      get copyWith => throw _privateConstructorUsedError;
}
