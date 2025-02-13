import 'package:movie_bloc/class/nowplaying_movie.dart';



abstract class DataStates{}

//init
class DataInitial extends DataStates{}


//Loading
class DataLoading extends DataStates{}

//Loaded
class DataLoaded extends DataStates{
  final List<NowPlayingMovie> movie;
  DataLoaded({
    required this.movie
});
}

//Success
class DataSuccess extends DataStates{
  final String mess;
  DataSuccess({
    required this.mess
  });
}

//Error
class DataError extends DataStates{
  final String mess;
  DataError({
    required this.mess
  });
}