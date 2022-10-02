import 'package:json_annotation/json_annotation.dart';
part 'lat_lng_literal.g.dart';

@JsonSerializable()
class LatLngLiteral {
  final double lat;
  final double lng;

  LatLngLiteral({
    required this.lat,
    required this.lng,
  });

  factory LatLngLiteral.fromJson(Map<String, dynamic> json) =>
      _$LatLngLiteralFromJson(json);

  Map<String, dynamic> toJson() => _$LatLngLiteralToJson(this);
}
