import 'package:ebook/pages/detail/detail_page.dart';
import 'package:ebook/pages/home/ui_components/best_of_the_day_card.dart';
import 'package:ebook/pages/home/ui_components/book_card.dart';
import 'package:ebook/pages/home/ui_components/continue_reading_card.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
                image: AssetImage('assets/images/main_page_bg.png'),
            fit: BoxFit.fitWidth)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.1 ),
              //What re you reading today ----------------------
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.displaySmall,
                      children: const [
                        TextSpan(
                          text: 'What are you \nreading ',
                        ),
                        TextSpan(
                          text: 'today?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]
                    )),
              ),
              const SizedBox(height: 30),
        
        
              //Reading today --------------------------
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BookCard(
                      image: 'assets/images/book-1.png',
                      name: 'Crushing & Influence',
                      author: 'Gary Venchuk',
                      rating: 4.8,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder:
                        (context) => const DetailPage(),
                        ));
                      },
                    ),
                    BookCard(
                      image: 'assets/images/book-2.png',
                      name: 'Crushing & Influence',
                      author: 'Gary Venchuk',
                      rating: 4.8,
                      onTap: () {},
                    ),
                    BookCard(
                      image: 'assets/images/book-3.png',
                      name: 'Crushing & Influence',
                      author: 'Gary Venchuk',
                      rating: 4.8,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
        
              //Best of the day ----------------------------
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Best of the ',
                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.w300),
                          ),
                          TextSpan(
                            text: 'day',
                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                  ),
        
                  //Image banner best of the day
                  BestOfTheDayCard(
                      size: size,
                    image: 'assets/images/book-3.png',
                    title: 'New York Time Best For 28th Feb 2025',
                    name: 'How To Win Friends & Influence',
                    author: 'Gary Venchuk',
                    rating: 4.9,
                    desriptions: 'When the earth was flat and everyone wanted to win the game of the best and people….,',
                    onTap: () {},
                  )
                ],
              ),
              ),
        
              //Countinue reading -------------------------
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Continue ',
                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.w300,
                            )),
                          TextSpan(
                            text: 'reading...',
                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                          )),
                        ],
                      )),
                  const SizedBox(height: 10),
                  //Continue reading --------------------------
                  ContinueReadingCard(size: size),

                ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}






