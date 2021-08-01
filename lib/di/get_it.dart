import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:movieapp/data/core/api_client.dart';
import 'package:movieapp/data/data_sources/movie_remote_data_source.dart';
import 'package:movieapp/data/repositories/movie_repository_impl.dart';
import 'package:movieapp/domain/repositories/movie_repository.dart';
import 'package:movieapp/domain/usecases/get_coming_soon.dart';
import 'package:movieapp/domain/usecases/get_playing_now.dart';
import 'package:movieapp/domain/usecases/get_popular.dart';
import 'package:movieapp/domain/usecases/get_trending.dart';
import 'package:movieapp/presentation/blocs/movie_backdrop/movie_backdrop_bloc.dart';
import 'package:movieapp/presentation/blocs/movie_carousel/movie_carousel_bloc.dart';

final getInstance = GetIt.I;

Future init() async {
  getInstance.registerLazySingleton<Client>(() => Client());

  getInstance.registerLazySingleton<ApiClient>(() => ApiClient(getInstance()));

  getInstance.registerLazySingleton<MovieRemoteDataSource>(
      () => MovieRemoteDataSourceImpl(getInstance()));

  getInstance
      .registerLazySingleton<GetTrending>(() => GetTrending(getInstance()));

  getInstance
      .registerLazySingleton<GetPopular>(() => GetPopular(getInstance()));

  getInstance
      .registerLazySingleton<GetPlayingNow>(() => GetPlayingNow(getInstance()));

  getInstance
      .registerLazySingleton<GetComingSoon>(() => GetComingSoon(getInstance()));

  getInstance.registerLazySingleton<MovieRepository>(
      () => MovieRepositoryImpl(getInstance()));

  getInstance.registerFactory(() => MovieBackdropBloc());

  getInstance.registerFactory(
    () => MovieCarouselBloc(
      getTrending: getInstance(),
      movieBackdropBloc: getInstance(),
    ),
  );
}
