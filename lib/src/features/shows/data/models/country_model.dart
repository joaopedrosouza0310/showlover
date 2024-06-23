import 'package:json_annotation/json_annotation.dart';

part 'country_model.g.dart';

@JsonSerializable()
class CountryModel {
  final String name;
  final String code;
  final String timezone;

  CountryModel({
    required this.name,
    required this.code,
    required this.timezone,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
  Map<String, dynamic> toJson() => _$CountryModelToJson(this);

  @override
  String toString() =>
      'CountryModel(name: $name, code: $code, timezone: $timezone)';
}
