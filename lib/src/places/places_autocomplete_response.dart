import 'package:google_maps_models/src/places/place_autocomplete_prediction.dart';
import 'package:json_annotation/json_annotation.dart';
part 'places_autocomplete_response.g.dart';

/// Response from the Place Autocomplete API
@JsonSerializable(explicitToJson: true)
class PlacesAutocompleteResponse {
  /// Create a new instance of [PlacesAutocompleteResponse]
  PlacesAutocompleteResponse({
    required this.predictions,
    required this.status,
    this.errorMessage,
    this.infoMessages,
  });

  /// Creates a new instance of [PlacesAutocompleteResponse] from JSON data
  factory PlacesAutocompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$PlacesAutocompleteResponseFromJson(json);

  /// Contains an array of predictions.
  /// See [PlaceAutocompletePrediction] for more information
  final List<PlaceAutocompletePrediction> predictions;

  /// Contains the status of the request, and may contain debugging
  /// information to help you track down why the request failed.
  final String status;

  /// When the service returns a status code other than OK<, there may be an
  /// additional error_message field within the response object.
  /// This field contains more detailed information about thereasons behind
  /// the given status code. This field is not always returned, and its content
  /// is subject to change.
  @JsonKey(name: 'error_message')
  final String? errorMessage;

  /// When the service returns additional information about the request
  /// specification, there may be an additional info_messages field within the
  /// response object. This field is only returned for successful requests.
  /// It may not always be returned, and its content is subject to change.
  @JsonKey(name: 'info_messages')
  final List<String>? infoMessages;

  /// Get the JSON representation of [PlacesAutocompleteResponse]
  Map<String, dynamic> toJson() => _$PlacesAutocompleteResponseToJson(this);
}
