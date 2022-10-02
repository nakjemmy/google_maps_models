import 'package:json_annotation/json_annotation.dart';
part 'directions_traffic_speed_entry.g.dart';

@JsonSerializable()
class DirectionsTrafficSpeedEntry {
  @JsonKey(name: 'offset_meters')
  final double offsetMeters;

  @JsonKey(name: 'speed_category')
  final String speedCategory;

  DirectionsTrafficSpeedEntry({
    required this.offsetMeters,
    required this.speedCategory,
  });

  factory DirectionsTrafficSpeedEntry.fromJson(Map<String, dynamic> json) =>
      _$DirectionsTrafficSpeedEntryFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionsTrafficSpeedEntryToJson(this);
}
