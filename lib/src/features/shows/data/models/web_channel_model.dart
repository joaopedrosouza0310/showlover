import 'package:json_annotation/json_annotation.dart';

import 'country_model.dart';

part 'web_channel_model.g.dart';

@JsonSerializable()
class WebChannelModel {
  final int id;
  final String name;
  final CountryModel? country;
  final String? officialSite;

  WebChannelModel({
    required this.id,
    required this.name,
    required this.country,
    required this.officialSite,
  });

  factory WebChannelModel.fromJson(Map<String, dynamic> json) =>
      _$WebChannelModelFromJson(json);
  Map<String, dynamic> toJson() => _$WebChannelModelToJson(this);
}
