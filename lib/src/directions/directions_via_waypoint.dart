import 'package:json_annotation/json_annotation.dart';
import 'lat_lng_literal.dart';
part 'directions_via_waypoint.g.dart';

@JsonSerializable(explicitToJson: true)
class DirectionsViaWaypoint {
  @JsonKey(name: 'step_index')
  final int? stepIndex;

  @JsonKey(name: 'step_interpolation')
  final String? stepInterpolation;

  final LatLngLiteral? location;

  DirectionsViaWaypoint({
    this.stepIndex,
    this.stepInterpolation,
    this.location,
  });

  factory DirectionsViaWaypoint.fromJson(Map<String, dynamic> json) =>
      _$DirectionsViaWaypointFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionsViaWaypointToJson(this);
}
