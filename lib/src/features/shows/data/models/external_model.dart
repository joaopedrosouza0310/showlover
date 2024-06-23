import 'package:json_annotation/json_annotation.dart';

part 'external_model.g.dart';

@JsonSerializable()
class ExternalsModel {
  final int? tvrage;
  final int? thetvdb;
  final String? imdb;

  ExternalsModel({
    required this.tvrage,
    required this.thetvdb,
    required this.imdb,
  });

  factory ExternalsModel.fromJson(Map<String, dynamic> json) =>
      _$ExternalsModelFromJson(json);
  Map<String, dynamic> toJson() => _$ExternalsModelToJson(this);

  @override
  String toString() =>
      'ExternalsModel(tvrage: $tvrage, thetvdb: $thetvdb, imdb: $imdb)';
}
