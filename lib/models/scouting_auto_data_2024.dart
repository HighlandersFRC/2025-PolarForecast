import 'package:freezed_annotation/freezed_annotation.dart';

part 'scouting_auto_data_2024.freezed.dart';
part 'scouting_auto_data_2024.g.dart';

@freezed
class ScoutingAutoData2024 with _$ScoutingAutoData2024 {
  const factory ScoutingAutoData2024({
    required int amp,
    required int speaker,
  }) = _ScoutingAutoData2024;

  factory ScoutingAutoData2024.fromJson(Map<String, dynamic> json) =>
      _$ScoutingAutoData2024FromJson(json);
}
