// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directions_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectionsStep _$DirectionsStepFromJson(Map<String, dynamic> json) =>
    DirectionsStep(
      duration:
          TextValueObject.fromJson(json['duration'] as Map<String, dynamic>),
      endLocation:
          LatLngLiteral.fromJson(json['end_location'] as Map<String, dynamic>),
      htmlInstructions: json['html_instructions'] as String,
      polyline:
          DirectionsPolyline.fromJson(json['polyline'] as Map<String, dynamic>),
      startLocation: LatLngLiteral.fromJson(
          json['start_location'] as Map<String, dynamic>),
      travelMode: json['travel_mode'] as String,
      distance: json['distance'] == null
          ? null
          : TextValueObject.fromJson(json['distance'] as Map<String, dynamic>),
      maneuver: json['maneuver'] as String?,
    );

Map<String, dynamic> _$DirectionsStepToJson(DirectionsStep instance) =>
    <String, dynamic>{
      'duration': instance.duration.toJson(),
      'end_location': instance.endLocation.toJson(),
      'html_instructions': instance.htmlInstructions,
      'polyline': instance.polyline.toJson(),
      'start_location': instance.startLocation.toJson(),
      'travel_mode': instance.travelMode,
      'distance': instance.distance?.toJson(),
      'maneuver': instance.maneuver,
    };
