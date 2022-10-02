import 'package:json_annotation/json_annotation.dart';
import 'lat_lng_literal.dart';
part 'bounds.g.dart';

@JsonSerializable(explicitToJson: true)
class Bounds {
  final LatLngLiteral northeast;
  final LatLngLiteral southwest;

  Bounds({
    required this.northeast,
    required this.southwest,
  });

  factory Bounds.fromJson(Map<String, dynamic> json) => _$BoundsFromJson(json);

  Map<String, dynamic> toJson() => _$BoundsToJson(this);
}
