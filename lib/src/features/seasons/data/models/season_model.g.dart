// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeasonModel _$SeasonModelFromJson(Map<String, dynamic> json) => SeasonModel(
      id: (json['id'] as num).toInt(),
      url: json['url'] as String,
      number: (json['number'] as num).toInt(),
      name: json['name'] as String,
      episodeOrder: (json['episodeOrder'] as num?)?.toInt(),
      premiereDate: json['premiereDate'] as String,
      endDate: json['endDate'] as String,
      network: json['network'] == null
          ? null
          : NetworkModel.fromJson(json['network'] as Map<String, dynamic>),
      webChannel: json['webChannel'],
      image: json['image'] == null
          ? null
          : ImageModel.fromJson(json['image'] as Map<String, dynamic>),
      summary: json['summary'] as String?,
      links: json['links'] == null
          ? null
          : LinksModel.fromJson(json['links'] as Map<String, dynamic>),
      episodes: (json['episodes'] as List<dynamic>?)
              ?.map((e) => EpisodeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SeasonModelToJson(SeasonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'number': instance.number,
      'name': instance.name,
      'episodeOrder': instance.episodeOrder,
      'premiereDate': instance.premiereDate,
      'endDate': instance.endDate,
      'network': instance.network,
      'webChannel': instance.webChannel,
      'image': instance.image,
      'summary': instance.summary,
      'links': instance.links,
      'episodes': instance.episodes,
    };
