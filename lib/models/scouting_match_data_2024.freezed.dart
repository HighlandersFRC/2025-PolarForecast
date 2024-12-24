// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scouting_match_data_2024.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScoutingMatchData2024 _$ScoutingMatchData2024FromJson(
    Map<String, dynamic> json) {
  return _ScoutingMatchData2024.fromJson(json);
}

/// @nodoc
mixin _$ScoutingMatchData2024 {
  ScoutingAutoData2024 get auto => throw _privateConstructorUsedError;
  ScoutingTeleopData2024 get teleop => throw _privateConstructorUsedError;
  ScoutingMiscellaneousData2024 get miscellaneous =>
      throw _privateConstructorUsedError;
  List<String>? get selectedPieces => throw _privateConstructorUsedError;

  /// Serializes this ScoutingMatchData2024 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScoutingMatchData2024
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoutingMatchData2024CopyWith<ScoutingMatchData2024> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoutingMatchData2024CopyWith<$Res> {
  factory $ScoutingMatchData2024CopyWith(ScoutingMatchData2024 value,
          $Res Function(ScoutingMatchData2024) then) =
      _$ScoutingMatchData2024CopyWithImpl<$Res, ScoutingMatchData2024>;
  @useResult
  $Res call(
      {ScoutingAutoData2024 auto,
      ScoutingTeleopData2024 teleop,
      ScoutingMiscellaneousData2024 miscellaneous,
      List<String>? selectedPieces});

  $ScoutingAutoData2024CopyWith<$Res> get auto;
  $ScoutingTeleopData2024CopyWith<$Res> get teleop;
  $ScoutingMiscellaneousData2024CopyWith<$Res> get miscellaneous;
}

/// @nodoc
class _$ScoutingMatchData2024CopyWithImpl<$Res,
        $Val extends ScoutingMatchData2024>
    implements $ScoutingMatchData2024CopyWith<$Res> {
  _$ScoutingMatchData2024CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScoutingMatchData2024
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auto = null,
    Object? teleop = null,
    Object? miscellaneous = null,
    Object? selectedPieces = freezed,
  }) {
    return _then(_value.copyWith(
      auto: null == auto
          ? _value.auto
          : auto // ignore: cast_nullable_to_non_nullable
              as ScoutingAutoData2024,
      teleop: null == teleop
          ? _value.teleop
          : teleop // ignore: cast_nullable_to_non_nullable
              as ScoutingTeleopData2024,
      miscellaneous: null == miscellaneous
          ? _value.miscellaneous
          : miscellaneous // ignore: cast_nullable_to_non_nullable
              as ScoutingMiscellaneousData2024,
      selectedPieces: freezed == selectedPieces
          ? _value.selectedPieces
          : selectedPieces // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  /// Create a copy of ScoutingMatchData2024
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScoutingAutoData2024CopyWith<$Res> get auto {
    return $ScoutingAutoData2024CopyWith<$Res>(_value.auto, (value) {
      return _then(_value.copyWith(auto: value) as $Val);
    });
  }

  /// Create a copy of ScoutingMatchData2024
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScoutingTeleopData2024CopyWith<$Res> get teleop {
    return $ScoutingTeleopData2024CopyWith<$Res>(_value.teleop, (value) {
      return _then(_value.copyWith(teleop: value) as $Val);
    });
  }

  /// Create a copy of ScoutingMatchData2024
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScoutingMiscellaneousData2024CopyWith<$Res> get miscellaneous {
    return $ScoutingMiscellaneousData2024CopyWith<$Res>(_value.miscellaneous,
        (value) {
      return _then(_value.copyWith(miscellaneous: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScoutingMatchData2024ImplCopyWith<$Res>
    implements $ScoutingMatchData2024CopyWith<$Res> {
  factory _$$ScoutingMatchData2024ImplCopyWith(
          _$ScoutingMatchData2024Impl value,
          $Res Function(_$ScoutingMatchData2024Impl) then) =
      __$$ScoutingMatchData2024ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ScoutingAutoData2024 auto,
      ScoutingTeleopData2024 teleop,
      ScoutingMiscellaneousData2024 miscellaneous,
      List<String>? selectedPieces});

  @override
  $ScoutingAutoData2024CopyWith<$Res> get auto;
  @override
  $ScoutingTeleopData2024CopyWith<$Res> get teleop;
  @override
  $ScoutingMiscellaneousData2024CopyWith<$Res> get miscellaneous;
}

/// @nodoc
class __$$ScoutingMatchData2024ImplCopyWithImpl<$Res>
    extends _$ScoutingMatchData2024CopyWithImpl<$Res,
        _$ScoutingMatchData2024Impl>
    implements _$$ScoutingMatchData2024ImplCopyWith<$Res> {
  __$$ScoutingMatchData2024ImplCopyWithImpl(_$ScoutingMatchData2024Impl _value,
      $Res Function(_$ScoutingMatchData2024Impl) _then)
      : super(_value, _then);

  /// Create a copy of ScoutingMatchData2024
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auto = null,
    Object? teleop = null,
    Object? miscellaneous = null,
    Object? selectedPieces = freezed,
  }) {
    return _then(_$ScoutingMatchData2024Impl(
      auto: null == auto
          ? _value.auto
          : auto // ignore: cast_nullable_to_non_nullable
              as ScoutingAutoData2024,
      teleop: null == teleop
          ? _value.teleop
          : teleop // ignore: cast_nullable_to_non_nullable
              as ScoutingTeleopData2024,
      miscellaneous: null == miscellaneous
          ? _value.miscellaneous
          : miscellaneous // ignore: cast_nullable_to_non_nullable
              as ScoutingMiscellaneousData2024,
      selectedPieces: freezed == selectedPieces
          ? _value._selectedPieces
          : selectedPieces // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoutingMatchData2024Impl implements _ScoutingMatchData2024 {
  const _$ScoutingMatchData2024Impl(
      {required this.auto,
      required this.teleop,
      required this.miscellaneous,
      final List<String>? selectedPieces})
      : _selectedPieces = selectedPieces;

  factory _$ScoutingMatchData2024Impl.fromJson(Map<String, dynamic> json) =>
      _$$ScoutingMatchData2024ImplFromJson(json);

  @override
  final ScoutingAutoData2024 auto;
  @override
  final ScoutingTeleopData2024 teleop;
  @override
  final ScoutingMiscellaneousData2024 miscellaneous;
  final List<String>? _selectedPieces;
  @override
  List<String>? get selectedPieces {
    final value = _selectedPieces;
    if (value == null) return null;
    if (_selectedPieces is EqualUnmodifiableListView) return _selectedPieces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ScoutingMatchData2024(auto: $auto, teleop: $teleop, miscellaneous: $miscellaneous, selectedPieces: $selectedPieces)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoutingMatchData2024Impl &&
            (identical(other.auto, auto) || other.auto == auto) &&
            (identical(other.teleop, teleop) || other.teleop == teleop) &&
            (identical(other.miscellaneous, miscellaneous) ||
                other.miscellaneous == miscellaneous) &&
            const DeepCollectionEquality()
                .equals(other._selectedPieces, _selectedPieces));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, auto, teleop, miscellaneous,
      const DeepCollectionEquality().hash(_selectedPieces));

  /// Create a copy of ScoutingMatchData2024
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoutingMatchData2024ImplCopyWith<_$ScoutingMatchData2024Impl>
      get copyWith => __$$ScoutingMatchData2024ImplCopyWithImpl<
          _$ScoutingMatchData2024Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoutingMatchData2024ImplToJson(
      this,
    );
  }
}

abstract class _ScoutingMatchData2024 implements ScoutingMatchData2024 {
  const factory _ScoutingMatchData2024(
      {required final ScoutingAutoData2024 auto,
      required final ScoutingTeleopData2024 teleop,
      required final ScoutingMiscellaneousData2024 miscellaneous,
      final List<String>? selectedPieces}) = _$ScoutingMatchData2024Impl;

  factory _ScoutingMatchData2024.fromJson(Map<String, dynamic> json) =
      _$ScoutingMatchData2024Impl.fromJson;

  @override
  ScoutingAutoData2024 get auto;
  @override
  ScoutingTeleopData2024 get teleop;
  @override
  ScoutingMiscellaneousData2024 get miscellaneous;
  @override
  List<String>? get selectedPieces;

  /// Create a copy of ScoutingMatchData2024
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoutingMatchData2024ImplCopyWith<_$ScoutingMatchData2024Impl>
      get copyWith => throw _privateConstructorUsedError;
}
