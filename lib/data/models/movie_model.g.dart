// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return MovieModel(
    adult: json['adult'] as bool?,
    backdrop_path: json['backdrop_path'] as String?,
    genre_ids:
        (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
    original_language: json['original_language'] as String?,
    original_title: json['original_title'] as String?,
    poster_path: json['poster_path'] as String?,
    video: json['video'] as bool?,
    vote_average: (json['vote_average'] as num?)?.toDouble(),
    title: json['title'] as String?,
    overview: json['overview'] as String?,
    release_date: json['release_date'] as String?,
    voteCount: json['voteCount'] as int?,
    id: json['id'] as int?,
    popularity: (json['popularity'] as num?)?.toDouble(),
    media_type: json['media_type'] as String?,
  );
}

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdrop_path,
      'genre_ids': instance.genre_ids,
      'original_language': instance.original_language,
      'original_title': instance.original_title,
      'poster_path': instance.poster_path,
      'video': instance.video,
      'vote_average': instance.vote_average,
      'title': instance.title,
      'overview': instance.overview,
      'release_date': instance.release_date,
      'voteCount': instance.voteCount,
      'id': instance.id,
      'popularity': instance.popularity,
      'media_type': instance.media_type,
    };
