import 'package:ebook/pages/home/ui_components/round_side_button.dart';
import 'package:flutter/material.dart';

import '../../../consttants.dart';
import 'book_rating.dart';

class BookCard extends StatelessWidget {
  final String image;
  final String name;
  final String author;
  final double rating;
  final Function()? onTap;
  const BookCard({
    super.key,
    required this.image,
    required this.name,
    required this.author,
    required this.onTap,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 250,
      width: 200,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            bottom: 5,
            child: Container(
              height: 225,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: kShadowColor,
                      offset: const Offset(0, 10),
                      blurRadius: 30,
                    )
                  ]
              ),
            ),
          ),

          //Image Books
          Image.asset(
            image,
            width: 150,
          ),

          //Icon
          Positioned(
            right: 10,
            top: 30,
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite_border_outlined),
                  onPressed: () {},
                ),
                 BookRating(
                  rating: rating,
                )
              ],
            ) ,
          ),


          //Desriptions
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: 85,
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(color: kBlackColor),
                        children: [
                          TextSpan(
                            text: '$name\n',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                              text: author,
                              style: const TextStyle(
                                color: kLightBlackColor,
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  //Buttons
                  Row(
                    children: [
                      GestureDetector(
                        onTap: onTap,
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          width: 100,
                          alignment: Alignment.center,
                          child: const Text('Details'),
                        ),
                      ),
                      RoundSideButton(
                        text: 'Read',
                        radius: 26,
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),



        ],
      ),
    );
  }
}