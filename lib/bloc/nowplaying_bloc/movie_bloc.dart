import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_bloc/bloc/nowplaying_bloc/movie_states.dart';
import 'package:http/http.dart' as http;
import 'package:movie_bloc/class/nowplaying_movie.dart';
import 'movie_events.dart';

class MovieBloc extends Bloc<MovieEvents , DataStates> {
  final String apikey = 'ae3f3e4940472504724214cb1762ee7a';

  MovieBloc() : super(DataInitial()) {
    on<FetchNowPlayingMovie>((event, emit) async {
      emit(DataLoading());
      try {
        final response = await http.get(Uri.parse(
            'https://api.themoviedb.org/3/movie/now_playing?api_key=$apikey'));
        if (response.statusCode == 200) {
          final result = jsonDecode(response.body);
          //print(result);

          if (result['results'] == null) {
            emit(DataError(mess: 'No results found'));
            return;
          }

          final nowplayingMovie = (result['results'] as List)
              .map((e) => NowPlayingMovie.fromJson(e))
              .toList();
          emit(DataLoaded(movie: nowplayingMovie));
        }
        else {
          emit(DataError(mess: 'Failed to get data'));
        }
      }
      catch (e) {
        emit(DataError(mess: 'Error: $e'));
      }
    });
  }
}