import 'package:freezed_annotation/freezed_annotation.dart';

import 'scouting_auto_data_2024.dart';
import 'scouting_miscellaneous_data_2024.dart';
import 'scouting_teleop_data_2024.dart';

part 'scouting_match_data_2024.freezed.dart';
part 'scouting_match_data_2024.g.dart';

@freezed
class ScoutingMatchData2024 with _$ScoutingMatchData2024 {
  const factory ScoutingMatchData2024({
    required ScoutingAutoData2024 auto,
    required ScoutingTeleopData2024 teleop,
    required ScoutingMiscellaneousData2024 miscellaneous,
    List<String>? selectedPieces,
  }) = _ScoutingMatchData2024;

  factory ScoutingMatchData2024.fromJson(Map<String, dynamic> json) =>
      _$ScoutingMatchData2024FromJson(json);
}
