import 'package:json_annotation/json_annotation.dart';
import 'directions_geocoded_waypoint.dart';
import 'directions_route.dart';

part 'directions_response.g.dart';

@JsonSerializable(explicitToJson: true)
class DirectionsResponse {
  final List<DirectionsRoute> routes;

  final String status;

  @JsonKey(name: "error_message")
  final String? errorMessage;

  @JsonKey(name: "available_travel_modes")
  final List<String>? availableTravelModes;

  @JsonKey(name: "geocoded_waypoints")
  final List<DirectionsGeocodedWaypoint>? geocodedWaypoints;

  DirectionsResponse({
    required this.routes,
    required this.status,
    this.errorMessage,
    this.availableTravelModes,
    this.geocodedWaypoints,
  });

  factory DirectionsResponse.fromJson(Map<String, dynamic> json) =>
      _$DirectionsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionsResponseToJson(this);
}
