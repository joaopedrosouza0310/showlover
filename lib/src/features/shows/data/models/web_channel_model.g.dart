// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_channel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WebChannelModel _$WebChannelModelFromJson(Map<String, dynamic> json) =>
    WebChannelModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      country: json['country'] == null
          ? null
          : CountryModel.fromJson(json['country'] as Map<String, dynamic>),
      officialSite: json['officialSite'] as String?,
    );

Map<String, dynamic> _$WebChannelModelToJson(WebChannelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'officialSite': instance.officialSite,
    };
