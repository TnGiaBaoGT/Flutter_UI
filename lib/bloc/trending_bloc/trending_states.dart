import 'package:movie_bloc/class/trending_movie.dart';



abstract class TrendingStates{}

//init
class TrendingMovieInitial extends TrendingStates{}


//Loading
class TrendingMovieLoading extends TrendingStates{}

//Loaded
class TrendingMovieLoaded extends TrendingStates{
  final List<TrendingMovie> trendingMovie;
  TrendingMovieLoaded({
    required this.trendingMovie,
  });
}

//Success
class TrendingMovieSuccess extends TrendingStates{
  final String mess;
  TrendingMovieSuccess({
    required this.mess
  });
}

//Error
class TrendingMovieError extends TrendingStates{
  final String mess;
  TrendingMovieError({
    required this.mess
  });
}