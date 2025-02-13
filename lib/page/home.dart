import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_bloc/bloc/nowplaying_bloc/movie_bloc.dart';
import 'package:movie_bloc/bloc/trending_bloc/trending_bloc.dart';
import 'package:movie_bloc/page/ui_components/body.dart';

import '../bloc/nowplaying_bloc/movie_events.dart';
import '../bloc/trending_bloc/trending_event.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<MovieBloc>().add(FetchNowPlayingMovie());
    context.read<TrendingBloc>().add(FetchTrendingMovie());
  }



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: Colors.black45,
      appBar: buildAppBar(context),
      body: const Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: Text('PAKO CINEMA',
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w600,color: Colors.white),
      ),
      leading: const Icon(Icons.menu,
      color: Colors.white,),
      actions: const [
        Icon(Icons.search,color: Colors.white),
        SizedBox(width: 10),
        Icon(Icons.notifications,color: Colors.white),
        SizedBox(width: 10),
      ],
    );
  }
}




