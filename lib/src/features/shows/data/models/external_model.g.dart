// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalsModel _$ExternalsModelFromJson(Map<String, dynamic> json) =>
    ExternalsModel(
      tvrage: (json['tvrage'] as num).toInt(),
      thetvdb: (json['thetvdb'] as num?)?.toInt(),
      imdb: json['imdb'] as String?,
    );

Map<String, dynamic> _$ExternalsModelToJson(ExternalsModel instance) =>
    <String, dynamic>{
      'tvrage': instance.tvrage,
      'thetvdb': instance.thetvdb,
      'imdb': instance.imdb,
    };
