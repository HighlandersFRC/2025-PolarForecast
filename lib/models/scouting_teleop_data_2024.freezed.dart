// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scouting_teleop_data_2024.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScoutingTeleopData2024 _$ScoutingTeleopData2024FromJson(
    Map<String, dynamic> json) {
  return _ScoutingTeleopData2024.fromJson(json);
}

/// @nodoc
mixin _$ScoutingTeleopData2024 {
  int get amp => throw _privateConstructorUsedError;
  int get speaker => throw _privateConstructorUsedError;
  int get amped_speaker => throw _privateConstructorUsedError;

  /// Serializes this ScoutingTeleopData2024 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScoutingTeleopData2024
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoutingTeleopData2024CopyWith<ScoutingTeleopData2024> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoutingTeleopData2024CopyWith<$Res> {
  factory $ScoutingTeleopData2024CopyWith(ScoutingTeleopData2024 value,
          $Res Function(ScoutingTeleopData2024) then) =
      _$ScoutingTeleopData2024CopyWithImpl<$Res, ScoutingTeleopData2024>;
  @useResult
  $Res call({int amp, int speaker, int amped_speaker});
}

/// @nodoc
class _$ScoutingTeleopData2024CopyWithImpl<$Res,
        $Val extends ScoutingTeleopData2024>
    implements $ScoutingTeleopData2024CopyWith<$Res> {
  _$ScoutingTeleopData2024CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScoutingTeleopData2024
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amp = null,
    Object? speaker = null,
    Object? amped_speaker = null,
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
      amped_speaker: null == amped_speaker
          ? _value.amped_speaker
          : amped_speaker // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoutingTeleopData2024ImplCopyWith<$Res>
    implements $ScoutingTeleopData2024CopyWith<$Res> {
  factory _$$ScoutingTeleopData2024ImplCopyWith(
          _$ScoutingTeleopData2024Impl value,
          $Res Function(_$ScoutingTeleopData2024Impl) then) =
      __$$ScoutingTeleopData2024ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int amp, int speaker, int amped_speaker});
}

/// @nodoc
class __$$ScoutingTeleopData2024ImplCopyWithImpl<$Res>
    extends _$ScoutingTeleopData2024CopyWithImpl<$Res,
        _$ScoutingTeleopData2024Impl>
    implements _$$ScoutingTeleopData2024ImplCopyWith<$Res> {
  __$$ScoutingTeleopData2024ImplCopyWithImpl(
      _$ScoutingTeleopData2024Impl _value,
      $Res Function(_$ScoutingTeleopData2024Impl) _then)
      : super(_value, _then);

  /// Create a copy of ScoutingTeleopData2024
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amp = null,
    Object? speaker = null,
    Object? amped_speaker = null,
  }) {
    return _then(_$ScoutingTeleopData2024Impl(
      amp: null == amp
          ? _value.amp
          : amp // ignore: cast_nullable_to_non_nullable
              as int,
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as int,
      amped_speaker: null == amped_speaker
          ? _value.amped_speaker
          : amped_speaker // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoutingTeleopData2024Impl implements _ScoutingTeleopData2024 {
  const _$ScoutingTeleopData2024Impl(
      {required this.amp, required this.speaker, required this.amped_speaker});

  factory _$ScoutingTeleopData2024Impl.fromJson(Map<String, dynamic> json) =>
      _$$ScoutingTeleopData2024ImplFromJson(json);

  @override
  final int amp;
  @override
  final int speaker;
  @override
  final int amped_speaker;

  @override
  String toString() {
    return 'ScoutingTeleopData2024(amp: $amp, speaker: $speaker, amped_speaker: $amped_speaker)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoutingTeleopData2024Impl &&
            (identical(other.amp, amp) || other.amp == amp) &&
            (identical(other.speaker, speaker) || other.speaker == speaker) &&
            (identical(other.amped_speaker, amped_speaker) ||
                other.amped_speaker == amped_speaker));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amp, speaker, amped_speaker);

  /// Create a copy of ScoutingTeleopData2024
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoutingTeleopData2024ImplCopyWith<_$ScoutingTeleopData2024Impl>
      get copyWith => __$$ScoutingTeleopData2024ImplCopyWithImpl<
          _$ScoutingTeleopData2024Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoutingTeleopData2024ImplToJson(
      this,
    );
  }
}

abstract class _ScoutingTeleopData2024 implements ScoutingTeleopData2024 {
  const factory _ScoutingTeleopData2024(
      {required final int amp,
      required final int speaker,
      required final int amped_speaker}) = _$ScoutingTeleopData2024Impl;

  factory _ScoutingTeleopData2024.fromJson(Map<String, dynamic> json) =
      _$ScoutingTeleopData2024Impl.fromJson;

  @override
  int get amp;
  @override
  int get speaker;
  @override
  int get amped_speaker;

  /// Create a copy of ScoutingTeleopData2024
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoutingTeleopData2024ImplCopyWith<_$ScoutingTeleopData2024Impl>
      get copyWith => throw _privateConstructorUsedError;
}
