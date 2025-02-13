import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_bloc/bloc/trending_bloc/trending_event.dart';
import 'package:movie_bloc/bloc/trending_bloc/trending_states.dart';

import '../../class/trending_movie.dart';

class TrendingBloc extends Bloc<TrendingMovieEvents,TrendingStates> {
  final String apikey = 'ae3f3e4940472504724214cb1762ee7a';

  TrendingBloc() : super(TrendingMovieInitial()) {
    on<FetchTrendingMovie>((event, emit) async {
      emit(TrendingMovieLoading());
      try {
        final response = await http.get(Uri.parse(
            'https://api.themoviedb.org/3/movie/now_playing?api_key=$apikey'));
        if (response.statusCode == 200) {
          final result = jsonDecode(response.body);
          //print(result);

          if (result['results'] == null) {
            emit(TrendingMovieError(mess: 'No results found'));
            return;
          }

          final trendingMovie = (result['results'] as List)
              .map((e) => TrendingMovie.fromJson(e))
              .toList();
          emit(TrendingMovieLoaded(trendingMovie:  trendingMovie));
        }
        else {
          emit(TrendingMovieError(mess: 'Failed to get data'));
        }
      }
      catch (e) {
        emit(TrendingMovieError(mess: 'Error: $e'));
      }
    });
  }
}
