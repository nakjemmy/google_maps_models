// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directions_leg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectionsLeg _$DirectionsLegFromJson(Map<String, dynamic> json) =>
    DirectionsLeg(
      endAddress: json['end_address'] as String,
      endLocation:
          LatLngLiteral.fromJson(json['end_location'] as Map<String, dynamic>),
      startAddress: json['start_address'] as String,
      distance: json['distance'] == null
          ? null
          : TextValueObject.fromJson(json['distance'] as Map<String, dynamic>),
      duration: json['duration'] == null
          ? null
          : TextValueObject.fromJson(json['duration'] as Map<String, dynamic>),
      durationInTraffic: json['duration_in_traffic'] == null
          ? null
          : TextValueObject.fromJson(
              json['duration_in_traffic'] as Map<String, dynamic>),
      startLocation: LatLngLiteral.fromJson(
          json['start_location'] as Map<String, dynamic>),
      steps: (json['steps'] as List<dynamic>)
          .map((e) => DirectionsStep.fromJson(e as Map<String, dynamic>))
          .toList(),
      trafficSpeedEntry: (json['traffic_speed_entry'] as List<dynamic>)
          .map((e) =>
              DirectionsTrafficSpeedEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      viaWaypoint: (json['via_waypoint'] as List<dynamic>)
          .map((e) => DirectionsViaWaypoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DirectionsLegToJson(DirectionsLeg instance) =>
    <String, dynamic>{
      'end_address': instance.endAddress,
      'end_location': instance.endLocation.toJson(),
      'start_address': instance.startAddress,
      'start_location': instance.startLocation.toJson(),
      'steps': instance.steps.map((e) => e.toJson()).toList(),
      'traffic_speed_entry':
          instance.trafficSpeedEntry.map((e) => e.toJson()).toList(),
      'via_waypoint': instance.viaWaypoint.map((e) => e.toJson()).toList(),
      'distance': instance.distance?.toJson(),
      'duration': instance.duration?.toJson(),
      'duration_in_traffic': instance.durationInTraffic?.toJson(),
    };
