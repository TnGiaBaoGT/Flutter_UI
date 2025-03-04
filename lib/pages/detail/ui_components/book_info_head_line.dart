import 'package:flutter/material.dart';
import '../../../consttants.dart';
import '../../../ui_components/round_button.dart';
import '../../home/ui_components/book_rating.dart';

class BookInfoHeadLine extends StatelessWidget {
  const BookInfoHeadLine({
    super.key,
    required this.name,
    required this.des,
    required this.image,
  });

  final String name;
  final String des;
  final String image;


  @override
  Widget build(BuildContext context) {
    List<String> name12 = name.split(' ');
    String firstName = name12.sublist(0,2).join(' ');
    String lastName = name12.sublist(2).join(' ');

    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              //Name-------------
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headlineLarge, // Áp dụng style chung
                  children: [
                    TextSpan(text: '$firstName\n'),
                    TextSpan(
                      text: lastName,
                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.bold, // Chỉ in đậm chữ "Influence"
                      ),
                    ),
                  ],
                ),
              ),


              const SizedBox(height: 10),
              //desriptions------------
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(des,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: kLightBlackColor,
                              fontSize: 10,
                            ),),
                        ),
                        const SizedBox(height: 10),
                        RoundButton(text: 'Read',
                            onTap: () {},
                            verticalPadiing: 9)
                      ],
                    ),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                           icon: const Icon(Icons.favorite_border_outlined)),
                        const SizedBox(height: 4),
                        const BookRating(rating: 4.8),
                      ],

                  )
                ],
              ),

            ],
          ),
        ),
        Image.asset(image,
          width: 185,
        ),
      ],
    );
  }
}
