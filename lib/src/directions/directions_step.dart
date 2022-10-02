import 'package:json_annotation/json_annotation.dart';
import 'directions_polyline.dart';
import 'lat_lng_literal.dart';
import 'text_value_object.dart';

part 'directions_step.g.dart';

@JsonSerializable(explicitToJson: true)
class DirectionsStep {
  final TextValueObject duration;

  @JsonKey(name: "end_location")
  final LatLngLiteral endLocation;

  @JsonKey(name: "html_instructions")
  final String htmlInstructions;

  final DirectionsPolyline polyline;

  @JsonKey(name: "start_location")
  final LatLngLiteral startLocation;

  @JsonKey(name: "travel_mode")
  final String travelMode;

  final TextValueObject? distance;

  final String? maneuver;

  DirectionsStep({
    required this.duration,
    required this.endLocation,
    required this.htmlInstructions,
    required this.polyline,
    required this.startLocation,
    required this.travelMode,
    this.distance,
    this.maneuver,
  });

  factory DirectionsStep.fromJson(Map<String, dynamic> json) =>
      _$DirectionsStepFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionsStepToJson(this);
}
