// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_autocomplete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesAutocompleteResponse _$PlacesAutocompleteResponseFromJson(
        Map<String, dynamic> json) =>
    PlacesAutocompleteResponse(
      predictions: (json['predictions'] as List<dynamic>)
          .map((e) =>
              PlaceAutocompletePrediction.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      errorMessage: json['error_message'] as String?,
      infoMessages: (json['info_messages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PlacesAutocompleteResponseToJson(
        PlacesAutocompleteResponse instance) =>
    <String, dynamic>{
      'predictions': instance.predictions.map((e) => e.toJson()).toList(),
      'status': instance.status,
      'error_message': instance.errorMessage,
      'info_messages': instance.infoMessages,
    };
