import 'package:excercise_app/constants.dart';
import 'package:excercise_app/pages/detail/detail_page.dart';
import 'package:excercise_app/pages/home/ui_components/excercise_card.dart';
import 'package:excercise_app/pages/home/ui_components/naviga_items.dart';
import 'package:excercise_app/pages/home/ui_components/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BottomNavi(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                  image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding,horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 54,
                      width: 54,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),

                  RichText(text: TextSpan(
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                    children: const [
                      TextSpan(
                        text: 'Good Morning\n',
                      ),
                      TextSpan(
                        text:'BaoPako',
                      ),
                    ]
                  )),

                  //Search bar------------------------
                  const MySearchBar(
                    width: double.infinity,
                  ),


                  //Excercise Card------------------------
                  Expanded(
                    child: GridView.count(
                        crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: kDefaultPadding,
                    mainAxisSpacing: kDefaultPadding,
                    children: [
                      ExcerciseCard(
                        name: 'Diet Recommemdation',
                        image: 'assets/icons/Hamburger.svg',
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder:
                          (context) => const DetailPage(),
                          ));
                        },
                      ),
                       ExcerciseCard(
                        name: 'Kegel Excercises',
                        image: 'assets/icons/Excrecises.svg',
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder:
                              (context) => const DetailPage(),
                          ));
                        },
                      ),
                       ExcerciseCard(
                        name: 'Meditation',
                        image: 'assets/icons/Meditation.svg',
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder:
                              (context) => const DetailPage(),
                          ));
                        },
                      ),
                       ExcerciseCard(
                        name: 'Yoga',
                        image: 'assets/icons/yoga.svg',
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder:
                              (context) => const DetailPage(),
                          ));
                        },
                      ),
                    ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}






