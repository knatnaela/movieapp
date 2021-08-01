// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return MovieModel(
    adult: json['adult'] as bool?,
    backdropPath: json['backdropPath'] as String?,
    genreIds:
        (json['genreIds'] as List<dynamic>?)?.map((e) => e as int).toList(),
    originalLanguage: json['originalLanguage'] as String?,
    originalTitle: json['originalTitle'] as String?,
    posterPath: json['posterPath'] as String?,
    video: json['video'] as bool?,
    voteAverage: (json['voteAverage'] as num?)?.toDouble(),
    title: json['title'] as String?,
    overview: json['overview'] as String?,
    releaseDate: json['releaseDate'] as String?,
    voteCount: json['voteCount'] as int?,
    id: json['id'] as int?,
    popularity: (json['popularity'] as num?)?.toDouble(),
    mediaType: json['mediaType'] as String?,
  );
}

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdropPath': instance.backdropPath,
      'genreIds': instance.genreIds,
      'originalLanguage': instance.originalLanguage,
      'originalTitle': instance.originalTitle,
      'posterPath': instance.posterPath,
      'video': instance.video,
      'voteAverage': instance.voteAverage,
      'title': instance.title,
      'overview': instance.overview,
      'releaseDate': instance.releaseDate,
      'voteCount': instance.voteCount,
      'id': instance.id,
      'popularity': instance.popularity,
      'mediaType': instance.mediaType,
    };
