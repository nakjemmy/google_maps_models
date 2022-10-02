// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directions_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectionsRoute _$DirectionsRouteFromJson(Map<String, dynamic> json) =>
    DirectionsRoute(
      bounds: Bounds.fromJson(json['bounds'] as Map<String, dynamic>),
      copyrights: json['copyrights'] as String,
      legs: (json['legs'] as List<dynamic>)
          .map((e) => DirectionsLeg.fromJson(e as Map<String, dynamic>))
          .toList(),
      overviewPolyline: DirectionsPolyline.fromJson(
          json['overview_polyline'] as Map<String, dynamic>),
      summary: json['summary'] as String,
      warnings:
          (json['warnings'] as List<dynamic>).map((e) => e as String).toList(),
      waypointOrder: (json['waypoint_order'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$DirectionsRouteToJson(DirectionsRoute instance) =>
    <String, dynamic>{
      'bounds': instance.bounds.toJson(),
      'copyrights': instance.copyrights,
      'legs': instance.legs.map((e) => e.toJson()).toList(),
      'overview_polyline': instance.overviewPolyline.toJson(),
      'summary': instance.summary,
      'warnings': instance.warnings,
      'waypoint_order': instance.waypointOrder,
    };
