import 'package:json_annotation/json_annotation.dart';

import 'country_model.dart';

part 'network_model.g.dart';

@JsonSerializable()
class NetworkModel {
  final int id;
  final String name;
  final CountryModel? country;
  final String? officialSite;

  NetworkModel({
    required this.id,
    required this.name,
    required this.country,
    this.officialSite,
  });

  factory NetworkModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkModelFromJson(json);
  Map<String, dynamic> toJson() => _$NetworkModelToJson(this);
}
