// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShowModel _$ShowModelFromJson(Map<String, dynamic> json) => ShowModel(
      id: (json['id'] as num).toInt(),
      url: json['url'] as String,
      name: json['name'] as String,
      type: json['type'] as String?,
      language: json['language'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      status: json['status'] as String,
      runtime: (json['runtime'] as num?)?.toInt(),
      averageRuntime: (json['averageRuntime'] as num).toInt(),
      premiered: json['premiered'] as String,
      ended: json['ended'] as String?,
      officialSite: json['officialSite'] as String?,
      schedule:
          ScheduleModel.fromJson(json['schedule'] as Map<String, dynamic>),
      rating: RatingModel.fromJson(json['rating'] as Map<String, dynamic>),
      weight: (json['weight'] as num).toInt(),
      network: json['network'] == null
          ? null
          : NetworkModel.fromJson(json['network'] as Map<String, dynamic>),
      webChannel: json['webChannel'] == null
          ? null
          : WebChannelModel.fromJson(
              json['webChannel'] as Map<String, dynamic>),
      dvdCountry: json['dvdCountry'],
      externals:
          ExternalsModel.fromJson(json['externals'] as Map<String, dynamic>),
      image: ImageModel.fromJson(json['image'] as Map<String, dynamic>),
      summary: json['summary'] as String,
      updated: (json['updated'] as num).toInt(),
      links: json['links'] == null
          ? null
          : LinksModel.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShowModelToJson(ShowModel instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'type': instance.type,
      'language': instance.language,
      'genres': instance.genres,
      'status': instance.status,
      'runtime': instance.runtime,
      'averageRuntime': instance.averageRuntime,
      'premiered': instance.premiered,
      'ended': instance.ended,
      'officialSite': instance.officialSite,
      'schedule': instance.schedule,
      'rating': instance.rating,
      'weight': instance.weight,
      'network': instance.network,
      'webChannel': instance.webChannel,
      'dvdCountry': instance.dvdCountry,
      'externals': instance.externals,
      'image': instance.image,
      'summary': instance.summary,
      'updated': instance.updated,
      'links': instance.links,
    };
