// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_scouting_2024.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MatchScouting2024 _$MatchScouting2024FromJson(Map<String, dynamic> json) {
  return _MatchScouting2024.fromJson(json);
}

/// @nodoc
mixin _$MatchScouting2024 {
  String get event_code => throw _privateConstructorUsedError;
  String get team_number => throw _privateConstructorUsedError;
  int get match_number => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  ScoutInfo2024 get scout_info => throw _privateConstructorUsedError;
  ScoutingMatchData2024 get data => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;

  /// Serializes this MatchScouting2024 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MatchScouting2024
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchScouting2024CopyWith<MatchScouting2024> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchScouting2024CopyWith<$Res> {
  factory $MatchScouting2024CopyWith(
          MatchScouting2024 value, $Res Function(MatchScouting2024) then) =
      _$MatchScouting2024CopyWithImpl<$Res, MatchScouting2024>;
  @useResult
  $Res call(
      {String event_code,
      String team_number,
      int match_number,
      bool active,
      ScoutInfo2024 scout_info,
      ScoutingMatchData2024 data,
      int time});

  $ScoutInfo2024CopyWith<$Res> get scout_info;
  $ScoutingMatchData2024CopyWith<$Res> get data;
}

/// @nodoc
class _$MatchScouting2024CopyWithImpl<$Res, $Val extends MatchScouting2024>
    implements $MatchScouting2024CopyWith<$Res> {
  _$MatchScouting2024CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchScouting2024
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event_code = null,
    Object? team_number = null,
    Object? match_number = null,
    Object? active = null,
    Object? scout_info = null,
    Object? data = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      event_code: null == event_code
          ? _value.event_code
          : event_code // ignore: cast_nullable_to_non_nullable
              as String,
      team_number: null == team_number
          ? _value.team_number
          : team_number // ignore: cast_nullable_to_non_nullable
              as String,
      match_number: null == match_number
          ? _value.match_number
          : match_number // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      scout_info: null == scout_info
          ? _value.scout_info
          : scout_info // ignore: cast_nullable_to_non_nullable
              as ScoutInfo2024,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ScoutingMatchData2024,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of MatchScouting2024
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScoutInfo2024CopyWith<$Res> get scout_info {
    return $ScoutInfo2024CopyWith<$Res>(_value.scout_info, (value) {
      return _then(_value.copyWith(scout_info: value) as $Val);
    });
  }

  /// Create a copy of MatchScouting2024
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScoutingMatchData2024CopyWith<$Res> get data {
    return $ScoutingMatchData2024CopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MatchScouting2024ImplCopyWith<$Res>
    implements $MatchScouting2024CopyWith<$Res> {
  factory _$$MatchScouting2024ImplCopyWith(_$MatchScouting2024Impl value,
          $Res Function(_$MatchScouting2024Impl) then) =
      __$$MatchScouting2024ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String event_code,
      String team_number,
      int match_number,
      bool active,
      ScoutInfo2024 scout_info,
      ScoutingMatchData2024 data,
      int time});

  @override
  $ScoutInfo2024CopyWith<$Res> get scout_info;
  @override
  $ScoutingMatchData2024CopyWith<$Res> get data;
}

/// @nodoc
class __$$MatchScouting2024ImplCopyWithImpl<$Res>
    extends _$MatchScouting2024CopyWithImpl<$Res, _$MatchScouting2024Impl>
    implements _$$MatchScouting2024ImplCopyWith<$Res> {
  __$$MatchScouting2024ImplCopyWithImpl(_$MatchScouting2024Impl _value,
      $Res Function(_$MatchScouting2024Impl) _then)
      : super(_value, _then);

  /// Create a copy of MatchScouting2024
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event_code = null,
    Object? team_number = null,
    Object? match_number = null,
    Object? active = null,
    Object? scout_info = null,
    Object? data = null,
    Object? time = null,
  }) {
    return _then(_$MatchScouting2024Impl(
      event_code: null == event_code
          ? _value.event_code
          : event_code // ignore: cast_nullable_to_non_nullable
              as String,
      team_number: null == team_number
          ? _value.team_number
          : team_number // ignore: cast_nullable_to_non_nullable
              as String,
      match_number: null == match_number
          ? _value.match_number
          : match_number // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      scout_info: null == scout_info
          ? _value.scout_info
          : scout_info // ignore: cast_nullable_to_non_nullable
              as ScoutInfo2024,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ScoutingMatchData2024,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchScouting2024Impl implements _MatchScouting2024 {
  const _$MatchScouting2024Impl(
      {required this.event_code,
      required this.team_number,
      required this.match_number,
      required this.active,
      required this.scout_info,
      required this.data,
      required this.time});

  factory _$MatchScouting2024Impl.fromJson(Map<String, dynamic> json) =>
      _$$MatchScouting2024ImplFromJson(json);

  @override
  final String event_code;
  @override
  final String team_number;
  @override
  final int match_number;
  @override
  final bool active;
  @override
  final ScoutInfo2024 scout_info;
  @override
  final ScoutingMatchData2024 data;
  @override
  final int time;

  @override
  String toString() {
    return 'MatchScouting2024(event_code: $event_code, team_number: $team_number, match_number: $match_number, active: $active, scout_info: $scout_info, data: $data, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchScouting2024Impl &&
            (identical(other.event_code, event_code) ||
                other.event_code == event_code) &&
            (identical(other.team_number, team_number) ||
                other.team_number == team_number) &&
            (identical(other.match_number, match_number) ||
                other.match_number == match_number) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.scout_info, scout_info) ||
                other.scout_info == scout_info) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, event_code, team_number,
      match_number, active, scout_info, data, time);

  /// Create a copy of MatchScouting2024
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchScouting2024ImplCopyWith<_$MatchScouting2024Impl> get copyWith =>
      __$$MatchScouting2024ImplCopyWithImpl<_$MatchScouting2024Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchScouting2024ImplToJson(
      this,
    );
  }
}

abstract class _MatchScouting2024 implements MatchScouting2024 {
  const factory _MatchScouting2024(
      {required final String event_code,
      required final String team_number,
      required final int match_number,
      required final bool active,
      required final ScoutInfo2024 scout_info,
      required final ScoutingMatchData2024 data,
      required final int time}) = _$MatchScouting2024Impl;

  factory _MatchScouting2024.fromJson(Map<String, dynamic> json) =
      _$MatchScouting2024Impl.fromJson;

  @override
  String get event_code;
  @override
  String get team_number;
  @override
  int get match_number;
  @override
  bool get active;
  @override
  ScoutInfo2024 get scout_info;
  @override
  ScoutingMatchData2024 get data;
  @override
  int get time;

  /// Create a copy of MatchScouting2024
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchScouting2024ImplCopyWith<_$MatchScouting2024Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
