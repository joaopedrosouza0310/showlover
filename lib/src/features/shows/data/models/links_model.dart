import 'package:json_annotation/json_annotation.dart';

import 'link_model.dart';

part 'links_model.g.dart';

@JsonSerializable()
class LinksModel {
  final LinkModel self;
  final LinkModel? previousepisode;

  LinksModel({
    required this.self,
    required this.previousepisode,
  });

  factory LinksModel.fromJson(Map<String, dynamic> json) =>
      _$LinksModelFromJson(json);
  Map<String, dynamic> toJson() => _$LinksModelToJson(this);

  @override
  String toString() =>
      'LinksModel(self: $self, previousepisode: $previousepisode)';
}
