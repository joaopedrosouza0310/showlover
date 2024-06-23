import 'package:json_annotation/json_annotation.dart';

part 'image_model.g.dart';

@JsonSerializable()
class ImageModel {
  final String medium;
  final String original;

  ImageModel({
    required this.medium,
    required this.original,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
  Map<String, dynamic> toJson() => _$ImageModelToJson(this);

  @override
  String toString() => 'ImageModel(medium: $medium, original: $original)';
}
