import 'package:freezed_annotation/freezed_annotation.dart';

part 'scouting_teleop_data_2024.freezed.dart';
part 'scouting_teleop_data_2024.g.dart';

@freezed
class ScoutingTeleopData2024 with _$ScoutingTeleopData2024 {
  const factory ScoutingTeleopData2024({
    required int amp,
    required int speaker,
    required int amped_speaker,
  }) = _ScoutingTeleopData2024;

  factory ScoutingTeleopData2024.fromJson(Map<String, dynamic> json) =>
      _$ScoutingTeleopData2024FromJson(json);
}
