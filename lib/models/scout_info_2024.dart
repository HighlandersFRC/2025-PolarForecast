import 'package:freezed_annotation/freezed_annotation.dart';

part 'scout_info_2024.freezed.dart';
part 'scout_info_2024.g.dart';

@freezed
class ScoutInfo2024 with _$ScoutInfo2024 {
  const factory ScoutInfo2024({
    required String name,
  }) = _ScoutInfo2024;

  factory ScoutInfo2024.fromJson(Map<String, dynamic> json) =>
      _$ScoutInfo2024FromJson(json);
}
