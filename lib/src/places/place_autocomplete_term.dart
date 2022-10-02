import 'package:json_annotation/json_annotation.dart';
part 'place_autocomplete_term.g.dart';

@JsonSerializable()
class PlaceAutocompleteTerm {
  final int offset;
  final String value;

  PlaceAutocompleteTerm({
    required this.offset,
    required this.value,
  });

  factory PlaceAutocompleteTerm.fromJson(Map<String, dynamic> json) =>
      _$PlaceAutocompleteTermFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceAutocompleteTermToJson(this);
}
