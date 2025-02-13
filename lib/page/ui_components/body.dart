import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_bloc/bloc/trending_bloc/trending_bloc.dart';
import 'package:movie_bloc/bloc/trending_bloc/trending_states.dart';
import 'package:movie_bloc/page/ui_components/title.dart';
import '../../bloc/nowplaying_bloc/movie_bloc.dart';
import '../../bloc/nowplaying_bloc/movie_states.dart';
import '../../constants.dart';
import 'nowplaying_movie_box.dart';


class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
        listeners: [
          BlocListener<MovieBloc,DataStates>(
            listener: (context, state) {
              if (state is DataError){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('There an error')),
                );
              }
            },
          ),

          BlocListener<TrendingBloc,TrendingStates>(
            listener: (context, state) {
              if (state is TrendingMovieError){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('There an error')),
                );
              }
            },
          ),
        ],
        child:BlocBuilder<MovieBloc,DataStates>(
      builder: (context, movieState) {
        return BlocBuilder<TrendingBloc, TrendingStates>(
            builder: (context, trendingState) {

              print(movieState);
              print(trendingState);

              if(movieState is DataLoading && trendingState is TrendingMovieLoading){
                return const Center(child: CircularProgressIndicator());
              }
              else if(movieState is DataLoaded && trendingState is TrendingMovieLoaded){
                return Padding(
                  padding: const EdgeInsets.all(kDefaultPadding/2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Now Playing Movie
                      Padding(
                        padding: const EdgeInsets.only(bottom: kDefaultPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Tittle(text: 'Currently Showing'),
                            const SizedBox(height: kDefaultPadding/2),
                            UpComingMoviePoster(nowPlayingMovie: movieState.movie),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Tittle(text: 'Trending'),
                            SizedBox(height: kDefaultPadding/2),
                            SizedBox(
                              height: 230,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                  itemCount: trendingState.trendingMovie.length,
                                  itemBuilder: (context, index) {
                                    final trendingmovie = trendingState.trendingMovie[index];
                                    return Container(
                                      width: 180,
                                      height: 230,
                                      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://image.tmdb.org/t/p/w780${trendingmovie.backdrop}'
                                            ),
                                        fit: BoxFit.cover)
                                      ),
                                    );
                                  },
                                  ),
                            )
                          ],
                        ),
                      ),




                    ],
                  ),
                );
              }
              return const Center(
                child: Text('App have errors.'),
              );
            });
      },
        ),
    );
  }
}

