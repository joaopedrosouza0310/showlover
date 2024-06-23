import 'package:json_annotation/json_annotation.dart';
import 'package:showlover/src/features/seasons/data/data.dart';

import '../../../shows/shows.dart';

part 'season_model.g.dart';

@JsonSerializable()
class SeasonModel {
  final int id;
  final String url;
  final int number;
  final String name;
  final int? episodeOrder;
  final String premiereDate;
  final String endDate;
  final NetworkModel? network;
  final dynamic webChannel;
  final ImageModel? image;
  final String? summary;
  final LinksModel? links;

  @JsonKey(defaultValue: [])
  final List<EpisodeModel> episodes;

  SeasonModel({
    required this.id,
    required this.url,
    required this.number,
    required this.name,
    required this.episodeOrder,
    required this.premiereDate,
    required this.endDate,
    required this.network,
    required this.webChannel,
    required this.image,
    required this.summary,
    required this.links,
    required this.episodes,
  });

  factory SeasonModel.fromJson(Map<String, dynamic> json) =>
      _$SeasonModelFromJson(json);
  Map<String, dynamic> toJson() => _$SeasonModelToJson(this);

  @override
  String toString() {
    return 'SeasonModel(id: $id, url: $url, number: $number, name: $name, episodeOrder: $episodeOrder, premiereDate: $premiereDate, endDate: $endDate, network: $network, webChannel: $webChannel, image: $image, summary: $summary, links: $links, episodes: $episodes)';
  }
}
