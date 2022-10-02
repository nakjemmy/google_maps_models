import 'package:json_annotation/json_annotation.dart';
import 'bounds.dart';
import 'directions_leg.dart';
import 'directions_polyline.dart';
part 'directions_route.g.dart';

@JsonSerializable(explicitToJson: true)
class DirectionsRoute {
  final Bounds bounds;
  final String copyrights;
  final List<DirectionsLeg> legs;
  @JsonKey(name: "overview_polyline")
  final DirectionsPolyline overviewPolyline;
  final String summary;
  final List<String> warnings;
  @JsonKey(name: "waypoint_order")
  final List<int> waypointOrder;

  DirectionsRoute({
    required this.bounds,
    required this.copyrights,
    required this.legs,
    required this.overviewPolyline,
    required this.summary,
    required this.warnings,
    required this.waypointOrder,
  });

  factory DirectionsRoute.fromJson(Map<String, dynamic> json) =>
      _$DirectionsRouteFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionsRouteToJson(this);
}
