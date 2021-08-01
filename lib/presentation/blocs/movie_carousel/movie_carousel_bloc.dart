import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movieapp/domain/entities/movie_entiry.dart';
import 'package:movieapp/domain/usecases/get_trending.dart';
import 'package:movieapp/domain/usecases/no_params.dart';
import 'package:movieapp/presentation/blocs/movie_backdrop/movie_backdrop_bloc.dart';

part 'movie_carousel_event.dart';
part 'movie_carousel_state.dart';

class MovieCarouselBloc extends Bloc<MovieCarouselEvent, MovieCarouselState> {
  final GetTrending getTrending;
  final MovieBackdropBloc movieBackdropBloc;
  MovieCarouselBloc({
    required this.movieBackdropBloc,
    required this.getTrending,
  }) : super(MovieCarouselInitial());

  @override
  Stream<MovieCarouselState> mapEventToState(
    MovieCarouselEvent event,
  ) async* {
    if (event is CarouselLoadEvent) {
      final movieEither = await getTrending(NoParams());
      yield movieEither.fold((l) => MovieCarouselError(), (movies) {
        movieBackdropBloc
            .add(MovieBackdropChangeEvent(movies[event.defaultIndex]));
        return MovieCarouselLoaded(
          movies: movies,
          defaultIndex: event.defaultIndex,
        );
      });
    }
  }
}
