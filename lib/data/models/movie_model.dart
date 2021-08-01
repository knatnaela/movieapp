import 'package:json_annotation/json_annotation.dart';
import 'package:movieapp/domain/entities/movie_entiry.dart';

part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel extends MovieEntity {
  final bool? adult;
  final String? backdrop_path;
  final List<int>? genre_ids;
  final String? original_language;
  final String? original_title;
  final String? poster_path;
  final bool? video;
  final double? vote_average;
  final String? title;
  final String? overview;
  final String? release_date;
  final int? voteCount;
  final int? id;
  final double? popularity;
  final String? media_type;

  MovieModel({
    this.adult,
    this.backdrop_path,
    required this.genre_ids,
    this.original_language,
    this.original_title,
    this.poster_path,
    this.video,
    this.vote_average,
    this.title,
    this.overview,
    this.release_date,
    this.voteCount,
    this.id,
    this.popularity,
    this.media_type,
  }) : super(
          backdropPath: backdrop_path,
          id: id,
          overView: overview,
          posterPath: poster_path,
          releaseDate: release_date,
          title: title,
          voteAverage: vote_average,
        );

  factory MovieModel.fromJson(Map<String, dynamic> data) =>
      _$MovieModelFromJson(data);
  Map<String, dynamic> toJson() => _$MovieModelToJson(this);
}
