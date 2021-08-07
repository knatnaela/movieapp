// ignore: import_of_legacy_library_into_null_safe
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:movieapp/data/data_sources/movie_remote_data_source.dart';
import 'package:movieapp/data/models/movie_model.dart';
import 'package:movieapp/domain/entities/app_error.dart';
import 'package:movieapp/domain/entities/movie_entiry.dart';
import 'package:movieapp/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl extends MovieRepository {
  final MovieRemoteDataSource remoteDataSource;

  MovieRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<AppError, List<MovieModel>>> getTrending() async {
    try {
      final movies = await remoteDataSource.getTrending();
      return Right(movies);
    } on SocketException {
      return Left(
        AppError(AppErrorType.network),
      );
    } on Exception {
      return Left(
        AppError(AppErrorType.api),
      );
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getComingSoon() async {
    try {
      final movies = await remoteDataSource.getComingSoon();
      return Right(movies);
    } on SocketException {
      return Left(
        AppError(AppErrorType.network),
      );
    } on Exception {
      return Left(
        AppError(AppErrorType.api),
      );
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getPlayingNow() async {
    try {
      final movies = await remoteDataSource.getPlayingNow();
      return Right(movies);
    } on SocketException {
      return Left(
        AppError(AppErrorType.network),
      );
    } on Exception {
      return Left(
        AppError(AppErrorType.api),
      );
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getPopular() async {
    try {
      final movies = await remoteDataSource.getPopular();
      return Right(movies);
    } on SocketException {
      return Left(
        AppError(AppErrorType.network),
      );
    } on Exception {
      return Left(
        AppError(AppErrorType.api),
      );
    }
  }
}
