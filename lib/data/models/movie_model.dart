import 'package:json_annotation/json_annotation.dart';
import 'package:movieapp/domain/entities/movie_entiry.dart';

part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel extends MovieEntity {
  final bool? adult;
  final String? backdropPath;
  final List<int>? genreIds;
  final String? originalLanguage;
  final String? originalTitle;
  final String? posterPath;
  final bool? video;
  final double? voteAverage;
  final String? title;
  final String? overview;
  final String? releaseDate;
  final int? voteCount;
  final int? id;
  final double? popularity;
  final String? mediaType;

  MovieModel({
    this.adult,
    this.backdropPath,
    required this.genreIds,
    this.originalLanguage,
    this.originalTitle,
    this.posterPath,
    this.video,
    this.voteAverage,
    this.title,
    this.overview,
    this.releaseDate,
    this.voteCount,
    this.id,
    this.popularity,
    this.mediaType,
  }) : super(
            backdropPath: backdropPath,
            id: id,
            overView: overview,
            posterPath: posterPath,
            releaseDate: releaseDate,
            title: title,
            voteAverage: voteAverage);

  factory MovieModel.fromJson(Map<String, dynamic> data) =>
      _$MovieModelFromJson(data);
  Map<String, dynamic> toJson() => _$MovieModelToJson(this);
}
