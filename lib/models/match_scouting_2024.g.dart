// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_scouting_2024.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchScouting2024Impl _$$MatchScouting2024ImplFromJson(
        Map<String, dynamic> json) =>
    _$MatchScouting2024Impl(
      event_code: json['event_code'] as String,
      team_number: json['team_number'] as String,
      match_number: (json['match_number'] as num).toInt(),
      active: json['active'] as bool,
      scout_info:
          ScoutInfo2024.fromJson(json['scout_info'] as Map<String, dynamic>),
      data:
          ScoutingMatchData2024.fromJson(json['data'] as Map<String, dynamic>),
      time: (json['time'] as num).toInt(),
    );

Map<String, dynamic> _$$MatchScouting2024ImplToJson(
        _$MatchScouting2024Impl instance) =>
    <String, dynamic>{
      'event_code': instance.event_code,
      'team_number': instance.team_number,
      'match_number': instance.match_number,
      'active': instance.active,
      'scout_info': instance.scout_info.toJson(),
      'data': instance.data.toJson(),
      'time': instance.time,
    };
