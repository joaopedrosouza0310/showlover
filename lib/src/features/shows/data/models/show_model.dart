import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'show_model.g.dart';

@JsonSerializable()
class ShowModel {
  final int id;
  final String url;
  final String name;
  final String? type;
  final String language;
  final List<String> genres;
  final String status;
  final int? runtime;
  final int averageRuntime;
  final String premiered;
  final String? ended;
  final String? officialSite;
  final ScheduleModel schedule;
  final RatingModel rating;
  final int weight;
  final NetworkModel? network;
  final WebChannelModel? webChannel;
  final dynamic dvdCountry;
  final ExternalsModel externals;
  final ImageModel image;
  final String summary;
  final int updated;
  final LinksModel? links;

  ShowModel({
    required this.id,
    required this.url,
    required this.name,
    required this.type,
    required this.language,
    required this.genres,
    required this.status,
    required this.runtime,
    required this.averageRuntime,
    required this.premiered,
    required this.ended,
    required this.officialSite,
    required this.schedule,
    required this.rating,
    required this.weight,
    required this.network,
    required this.webChannel,
    required this.dvdCountry,
    required this.externals,
    required this.image,
    required this.summary,
    required this.updated,
    required this.links,
  });

  factory ShowModel.fromJson(Map<String, dynamic> json) =>
      _$ShowModelFromJson(json);
  Map<String, dynamic> toJson() => _$ShowModelToJson(this);

  @override
  String toString() {
    return 'ShowModel(id: $id, url: $url, name: $name, type: $type, language: $language, genres: $genres, status: $status, runtime: $runtime, averageRuntime: $averageRuntime, premiered: $premiered, ended: $ended, officialSite: $officialSite, schedule: $schedule, rating: $rating, weight: $weight, network: $network, webChannel: $webChannel, dvdCountry: $dvdCountry, externals: $externals, image: $image, summary: $summary, updated: $updated, links: $links)';
  }
}
