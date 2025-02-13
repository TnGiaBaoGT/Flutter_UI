import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_bloc/class/nowplaying_movie.dart';


class UpComingMoviePoster extends StatelessWidget {
  final List<NowPlayingMovie> nowPlayingMovie;
  const UpComingMoviePoster({
    super.key,
    required this.nowPlayingMovie,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: nowPlayingMovie.length,
        itemBuilder: (context, index, realIndex) {
          final nowplayingM = nowPlayingMovie[index];
          return
            //Poster Movie
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://image.tmdb.org/t/p/original${nowplayingM.backdrop}'
                    ),
                    fit: BoxFit.cover),
              ),
            );
        },
        options: CarouselOptions(
          aspectRatio: 1.9,
          autoPlay: true,
          enlargeCenterPage: true,
          autoPlayInterval: const Duration(seconds: 4),
          pauseAutoPlayOnTouch: true,
          pauseAutoPlayInFiniteScroll: true,
          pauseAutoPlayOnManualNavigate: true,
        ));
  }
}