// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scouting_match_data_2024.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScoutingMatchData2024Impl _$$ScoutingMatchData2024ImplFromJson(
        Map<String, dynamic> json) =>
    _$ScoutingMatchData2024Impl(
      auto: ScoutingAutoData2024.fromJson(json['auto'] as Map<String, dynamic>),
      teleop: ScoutingTeleopData2024.fromJson(
          json['teleop'] as Map<String, dynamic>),
      miscellaneous: ScoutingMiscellaneousData2024.fromJson(
          json['miscellaneous'] as Map<String, dynamic>),
      selectedPieces: (json['selectedPieces'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ScoutingMatchData2024ImplToJson(
        _$ScoutingMatchData2024Impl instance) =>
    <String, dynamic>{
      'auto': instance.auto.toJson(),
      'teleop': instance.teleop.toJson(),
      'miscellaneous': instance.miscellaneous.toJson(),
      'selectedPieces': instance.selectedPieces,
    };
