import 'package:json_annotation/json_annotation.dart';

import '../../../shows/data/data.dart';

part 'episode_model.g.dart';

@JsonSerializable()
class EpisodeModel {
  int id;
  String url;
  String name;
  int? season;
  int number;
  String? type;
  String? airdate;
  String? airtime;
  String? airstamp;
  int? runtime;
  RatingModel? rating;
  ImageModel? image;
  String? summary;
  LinksModel? links;

  EpisodeModel({
    required this.id,
    required this.url,
    required this.name,
    required this.season,
    required this.number,
    required this.type,
    required this.airdate,
    required this.airtime,
    required this.airstamp,
    required this.runtime,
    required this.rating,
    required this.image,
    required this.summary,
    required this.links,
  });

  factory EpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeModelFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeModelToJson(this);

  @override
  String toString() {
    return 'Episode(id: $id, url: $url, name: $name, season: $season, number: $number, type: $type, airdate: $airdate, airtime: $airtime, airstamp: $airstamp, runtime: $runtime, rating: $rating, image: $image, summary: $summary, links: $links)';
  }
}
