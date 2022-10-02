import 'package:json_annotation/json_annotation.dart';
part 'directions_polyline.g.dart';

@JsonSerializable()
class DirectionsPolyline {
  final String points;

  DirectionsPolyline({
    required this.points,
  });

  factory DirectionsPolyline.fromJson(Map<String, dynamic> json) =>
      _$DirectionsPolylineFromJson(json);

  Map<String, dynamic> toJson() => _$DirectionsPolylineToJson(this);
}
