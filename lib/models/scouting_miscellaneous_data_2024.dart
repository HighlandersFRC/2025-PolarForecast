import 'package:freezed_annotation/freezed_annotation.dart';

part 'scouting_miscellaneous_data_2024.freezed.dart';
part 'scouting_miscellaneous_data_2024.g.dart';

@freezed
class ScoutingMiscellaneousData2024 with _$ScoutingMiscellaneousData2024 {
  const factory ScoutingMiscellaneousData2024({
    required bool died,
    required String comments,
  }) = _ScoutingMiscellaneousData2024;

  factory ScoutingMiscellaneousData2024.fromJson(Map<String, dynamic> json) =>
      _$ScoutingMiscellaneousData2024FromJson(json);
}
