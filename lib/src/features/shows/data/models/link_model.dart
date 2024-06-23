import 'package:json_annotation/json_annotation.dart';

part 'link_model.g.dart';

@JsonSerializable()
class LinkModel {
  final String href;
  final String? name;

  LinkModel({
    required this.href,
    this.name,
  });

  factory LinkModel.fromJson(Map<String, dynamic> json) =>
      _$LinkModelFromJson(json);
  Map<String, dynamic> toJson() => _$LinkModelToJson(this);

  @override
  String toString() => 'LinkModel(href: $href, name: $name)';
}
