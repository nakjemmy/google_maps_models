// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directions_geocoded_waypoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectionsGeocodedWaypoint _$DirectionsGeocodedWaypointFromJson(
        Map<String, dynamic> json) =>
    DirectionsGeocodedWaypoint(
      geocoderStatus: json['geocoder_status'] as String?,
      placeId: json['place_id'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$DirectionsGeocodedWaypointToJson(
        DirectionsGeocodedWaypoint instance) =>
    <String, dynamic>{
      'geocoder_status': instance.geocoderStatus,
      'place_id': instance.placeId,
      'types': instance.types,
    };
