import 'dart:async';
import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movieapp/domain/entities/app_error.dart';
import 'package:movieapp/domain/entities/movie_entiry.dart';
import 'package:movieapp/domain/usecases/get_coming_soon.dart';
import 'package:movieapp/domain/usecases/get_playing_now.dart';
import 'package:movieapp/domain/usecases/get_popular.dart';
import 'package:movieapp/domain/usecases/no_params.dart';

part 'movie_tabbed_event.dart';
part 'movie_tabbed_state.dart';

class MovieTabbedBloc extends Bloc<MovieTabbedEvent, MovieTabbedState> {
  final GetPopular getPopular;
  final GetPlayingNow getPlayingNow;
  final GetComingSoon getComingSoon;
  MovieTabbedBloc({
    required this.getPopular,
    required this.getPlayingNow,
    required this.getComingSoon,
  }) : super(MovieTabbedInitial(0));

  @override
  Stream<MovieTabbedState> mapEventToState(
    MovieTabbedEvent event,
  ) async* {
    if (event is MovieTabbedChangedEvent) {
      late Either<AppError, List<MovieEntity>> movieEither;
      switch (event.currentTabIndex) {
        case 0:
          movieEither = await getPopular(NoParams());
          break;
        case 1:
          movieEither = await getPlayingNow(NoParams());
          break;
        case 2:
          movieEither = await getComingSoon(NoParams());
          break;
      }
      yield movieEither.fold(
        (l) => MovieTabLoadError(
          currentTabIndex: event.currentTabIndex,
        ),
        (movies) => MovieTabChanged(
          currentTabIndex: event.currentTabIndex,
          movies: movies,
        ),
      );
    }
  }
}
