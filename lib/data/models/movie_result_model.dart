import 'package:json_annotation/json_annotation.dart';

import 'package:movieapp/data/models/movie_model.dart';

part 'movie_result_model.g.dart';

@JsonSerializable()
class MovieResultModel {
  final List<MovieModel> results;

  MovieResultModel({
    required this.results,
  });

  factory MovieResultModel.fromJson(Map<String, dynamic> data) =>
      _$MovieResultModelFromJson(data);
  Map<String, dynamic> toJson() => _$MovieResultModelToJson(this);
}
