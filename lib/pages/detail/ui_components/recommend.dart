import 'package:flutter/material.dart';

import '../../../consttants.dart';
import '../../../ui_components/round_button.dart';
import '../../home/ui_components/book_rating.dart';


class Recommend extends StatelessWidget {
  const Recommend({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40,top: 10),
            child: RichText(text: TextSpan(
              children: [
                TextSpan(
                    text: 'You might also ',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: kLightBlackColor,
                    )
                ),
                TextSpan(
                    text: 'like...',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    )
                )
              ],
            )),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20, bottom: 10),
            child: Stack(
              children: [
                SizedBox(
                  height: 180,
                  width: size.width * 0.9,
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 20,
                        top: 20,
                      right: 20,
                    ),
                    height: 160,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'How To Win\n',
                                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                              TextSpan(
                                text: 'Friends & Influence\n',
                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const TextSpan(
                                  text: 'Gavy Venchuk',
                                  style: TextStyle(
                                    color: kLightBlackColor,
                                    fontSize: 14,
                                  )
                              ),
                            ]
                        )),

                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const BookRating(rating: 4.8),
                            const SizedBox(width: 14),
                            RoundButton(
                                text: 'Read',
                                onTap: () {},
                                verticalPadiing: 5)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset('assets/images/book-3.png',
                  ),
                ),
              ],
            ),
          ),
        ],
    );
  }
}
