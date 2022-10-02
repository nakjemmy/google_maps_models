import 'package:google_maps_models/src/places/place_autocomplete_matched_substring.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place_autocomplete_structured_format.g.dart';

@JsonSerializable(explicitToJson: true)
class PlaceAutocompleteStructuredFormat {
  @JsonKey(name: 'main_text')
  final String mainText;

  @JsonKey(name: 'main_text_matched_substrings')
  final List<PlaceAutocompleteMatchedSubstring> mainTextMatchedSubstrings;

  @JsonKey(name: 'secondary_text')
  final String secondaryText;

  @JsonKey(name: 'secondary_text_matched_substrings')
  final List<PlaceAutocompleteMatchedSubstring>? secondaryTextMatchedSubstrings;

  PlaceAutocompleteStructuredFormat({
    required this.mainText,
    required this.mainTextMatchedSubstrings,
    required this.secondaryText,
    this.secondaryTextMatchedSubstrings,
  });

  factory PlaceAutocompleteStructuredFormat.fromJson(
          Map<String, dynamic> json) =>
      _$PlaceAutocompleteStructuredFormatFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PlaceAutocompleteStructuredFormatToJson(this);
}
