// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectionsResponse _$DirectionsResponseFromJson(Map<String, dynamic> json) =>
    DirectionsResponse(
      routes: (json['routes'] as List<dynamic>)
          .map((e) => DirectionsRoute.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      errorMessage: json['error_message'] as String?,
      availableTravelModes: (json['available_travel_modes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      geocodedWaypoints: (json['geocoded_waypoints'] as List<dynamic>?)
          ?.map((e) =>
              DirectionsGeocodedWaypoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DirectionsResponseToJson(DirectionsResponse instance) =>
    <String, dynamic>{
      'routes': instance.routes.map((e) => e.toJson()).toList(),
      'status': instance.status,
      'error_message': instance.errorMessage,
      'available_travel_modes': instance.availableTravelModes,
      'geocoded_waypoints':
          instance.geocodedWaypoints?.map((e) => e.toJson()).toList(),
    };
