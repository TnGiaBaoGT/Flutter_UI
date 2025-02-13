import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_bloc/bloc/nowplaying_bloc/movie_bloc.dart';
import 'package:movie_bloc/bloc/trending_bloc/trending_bloc.dart';
import 'package:movie_bloc/page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie Bloc',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => MovieBloc()),
          BlocProvider(
              create: (context) => TrendingBloc()),
        ],
          child: const Home()),
    );
  }
}
