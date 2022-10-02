import 'package:json_annotation/json_annotation.dart';
part 'directions_geocoded_waypoint.g.dart';

@JsonSerializable(explicitToJson: true)
class DirectionsGeocodedWaypoint {
  @JsonKey(name: "geocoder_status")
  final String? geocoderStatus;

  @JsonKey(name: "place_id")
  final String? placeId;

  final List<String>? types;

  DirectionsGeocodedWaypoint({
    this.geocoderStatus,
    this.placeId,
    this.types,
  });

  factory DirectionsGeocodedWaypoint.fromJson(Map<String, dynamic> json) =>
      _$DirectionsGeocodedWaypointFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionsGeocodedWaypointToJson(this);
}
