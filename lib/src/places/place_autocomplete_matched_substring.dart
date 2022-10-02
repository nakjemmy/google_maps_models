import 'package:json_annotation/json_annotation.dart';
part 'place_autocomplete_matched_substring.g.dart';

@JsonSerializable()
class PlaceAutocompleteMatchedSubstring {
  final int length;
  final int offset;

  PlaceAutocompleteMatchedSubstring({
    required this.length,
    required this.offset,
  });

  factory PlaceAutocompleteMatchedSubstring.fromJson(
          Map<String, dynamic> json) =>
      _$PlaceAutocompleteMatchedSubstringFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PlaceAutocompleteMatchedSubstringToJson(this);
}
