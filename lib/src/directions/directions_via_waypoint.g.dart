// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directions_via_waypoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectionsViaWaypoint _$DirectionsViaWaypointFromJson(
        Map<String, dynamic> json) =>
    DirectionsViaWaypoint(
      stepIndex: json['step_index'] as int?,
      stepInterpolation: json['step_interpolation'] as String?,
      location: json['location'] == null
          ? null
          : LatLngLiteral.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DirectionsViaWaypointToJson(
        DirectionsViaWaypoint instance) =>
    <String, dynamic>{
      'step_index': instance.stepIndex,
      'step_interpolation': instance.stepInterpolation,
      'location': instance.location?.toJson(),
    };
