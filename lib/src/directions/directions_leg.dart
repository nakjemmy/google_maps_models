import 'package:json_annotation/json_annotation.dart';
import 'directions_step.dart';
import 'directions_traffic_speed_entry.dart';
import 'directions_via_waypoint.dart';
import 'lat_lng_literal.dart';
import 'text_value_object.dart';
part 'directions_leg.g.dart';

@JsonSerializable(explicitToJson: true)
class DirectionsLeg {
  @JsonKey(name: "end_address")
  final String endAddress;

  @JsonKey(name: "end_location")
  final LatLngLiteral endLocation;

  @JsonKey(name: "start_address")
  final String startAddress;

  @JsonKey(name: "start_location")
  final LatLngLiteral startLocation;

  final List<DirectionsStep> steps;

  @JsonKey(name: "traffic_speed_entry")
  final List<DirectionsTrafficSpeedEntry> trafficSpeedEntry;

  @JsonKey(name: "via_waypoint")
  final List<DirectionsViaWaypoint> viaWaypoint;

  final TextValueObject? distance;

  final TextValueObject? duration;

  @JsonKey(name: "duration_in_traffic")
  final TextValueObject? durationInTraffic;


  DirectionsLeg({
    required this.endAddress,
    required this.endLocation,
    required this.startAddress,
    this.distance,
    this.duration,
    this.durationInTraffic,
    required this.startLocation,
    required this.steps,
    required this.trafficSpeedEntry,
    required this.viaWaypoint,
  });

  factory DirectionsLeg.fromJson(Map<String, dynamic> json) =>
      _$DirectionsLegFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionsLegToJson(this);
}
