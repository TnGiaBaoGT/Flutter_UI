import 'package:excercise_app/constants.dart';
import 'package:excercise_app/pages/detail/ui_components/excercises_sessions.dart';
import 'package:excercise_app/pages/detail/ui_components/header_background.dart';
import 'package:excercise_app/pages/detail/ui_components/recommend_card.dart';
import 'package:excercise_app/pages/home/ui_components/naviga_items.dart';
import 'package:excercise_app/pages/home/ui_components/search_bar.dart';
import 'package:flutter/material.dart';


class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          HeaderbackGround(size: size),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: kDefaultPadding*1.5,
                  left: kDefaultPadding* 1.5,
              right: kDefaultPadding * 1.5),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Meditation',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.w900, letterSpacing: 1.1,),
                    ),
                    const SizedBox(height: 15),
                    const Text('3-10 MIN Course',
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    ),
                    const SizedBox(height: 15),
                    const Padding(
                      padding: EdgeInsets.only(bottom:kDefaultPadding/2,right: 50),
                      child: Text('Live happier and healthier by learning the fundamentals of meditation and mindfulness',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                
                    const MySearchBar(width: 200),
                    const SizedBox(height: 20),
                
                
                    //Excercises Sessions--------------------
                    SizedBox(
                      height: 290,
                      child: GridView.count(
                          crossAxisCount: 2,
                        childAspectRatio: 2.2,
                        mainAxisSpacing: kDefaultPadding,
                        crossAxisSpacing: kDefaultPadding,
                        shrinkWrap: true,
                        //physics: const NeverScrollableScrollPhysics(),
                        children: [
                          ExcercisesSessions(name: 'Session 01', onTap: () {}, isDone: true),
                          ExcercisesSessions(name: 'Session 02', onTap: () {}, isDone: false),
                          ExcercisesSessions(name: 'Session 03', onTap: () {}, isDone: true),
                          ExcercisesSessions(name: 'Session 04', onTap: () {}, isDone: false),
                          ExcercisesSessions(name: 'Session 05', onTap: () {}, isDone: false),
                          ExcercisesSessions(name: 'Session 06', onTap: () {}, isDone: false),
                        ],
                      ),
                    ),

                    const Divider(
                      color: kBlueColor,
                      height: 4,
                      thickness: 1.5,
                    ),


                    //Recomended------------------
                     Padding(
                       padding: const EdgeInsets.only(top: kDefaultPadding/2,bottom: kDefaultPadding/2),
                          child: Text('Meditation',
                                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.w500, letterSpacing: 1.1
                                ),),
                        ),
                    const RecommendCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      title: 'Basics 2',
                      desr: 'Start your deepen you pratice',
                    ),
                    const RecommendCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      title: 'Basics 1',
                      desr: 'Start your deepen you pratice',
                    ),

                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const BottomNavi(),
    );
  }
}



