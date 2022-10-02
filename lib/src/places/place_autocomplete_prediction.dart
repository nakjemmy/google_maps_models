import 'package:google_maps_models/src/places/place_autocomplete_matched_substring.dart';
import 'package:google_maps_models/src/places/place_autocomplete_structured_format.dart';
import 'package:google_maps_models/src/places/place_autocomplete_term.dart';
import 'package:json_annotation/json_annotation.dart';
part 'place_autocomplete_prediction.g.dart';

@JsonSerializable(explicitToJson: true)
class PlaceAutocompletePrediction {
  final String description;

  @JsonKey(name: 'matched_substrings')
  final List<PlaceAutocompleteMatchedSubstring> matchedSubstrings;

  @JsonKey(name: 'structured_formatting')
  final PlaceAutocompleteStructuredFormat structuredFormatting;

  final List<PlaceAutocompleteTerm> terms;

  @JsonKey(name: 'place_id')
  final String? placeId;

  final String? reference;

  final List<String>? types;

  PlaceAutocompletePrediction({
    required this.description,
    required this.matchedSubstrings,
    required this.structuredFormatting,
    required this.terms,
    this.placeId,
    this.reference,
    this.types,
  });

  factory PlaceAutocompletePrediction.fromJson(Map<String, dynamic> json) =>
      _$PlaceAutocompletePredictionFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceAutocompletePredictionToJson(this);
}
