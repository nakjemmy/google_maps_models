// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directions_traffic_speed_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectionsTrafficSpeedEntry _$DirectionsTrafficSpeedEntryFromJson(
        Map<String, dynamic> json) =>
    DirectionsTrafficSpeedEntry(
      offsetMeters: (json['offset_meters'] as num).toDouble(),
      speedCategory: json['speed_category'] as String,
    );

Map<String, dynamic> _$DirectionsTrafficSpeedEntryToJson(
        DirectionsTrafficSpeedEntry instance) =>
    <String, dynamic>{
      'offset_meters': instance.offsetMeters,
      'speed_category': instance.speedCategory,
    };
