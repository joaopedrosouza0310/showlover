import 'package:json_annotation/json_annotation.dart';

part 'rating_model.g.dart';

@JsonSerializable()
class RatingModel {
  final double? average;

  RatingModel({this.average});

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);
  Map<String, dynamic> toJson() => _$RatingModelToJson(this);

  @override
  String toString() => 'RatingModel(average: $average)';
}
