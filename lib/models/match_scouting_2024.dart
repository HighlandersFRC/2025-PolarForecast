import 'package:freezed_annotation/freezed_annotation.dart';

import 'scout_info_2024.dart';
import 'scouting_match_data_2024.dart';

part 'match_scouting_2024.freezed.dart';
part 'match_scouting_2024.g.dart';

@freezed
class MatchScouting2024 with _$MatchScouting2024 {
  const factory MatchScouting2024({
    required String event_code,
    required String team_number,
    required int match_number,
    required bool active,
    required ScoutInfo2024 scout_info,
    required ScoutingMatchData2024 data,
    required int time,
  }) = _MatchScouting2024;

  factory MatchScouting2024.fromJson(Map<String, dynamic> json) =>
      _$MatchScouting2024FromJson(json);
}
