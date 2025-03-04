import 'package:ebook/pages/home/ui_components/round_side_button.dart';
import 'package:flutter/material.dart';
import '../../../consttants.dart';
import 'book_rating.dart';


class BestOfTheDayCard extends StatelessWidget {
  const BestOfTheDayCard({
    super.key,
    required this.size,
    required this.title,
    required this.author,
    required this.desriptions,
    required this.image,
    required this.rating,
    required this.onTap,
    required this.name,
  });

  final Size size;
  final String name;
  final String title;
  final String author;
  final String desriptions;
  final String image;
  final double rating;
  final Function()? onTap;


  String formatText(String text) {
    List<String> words = text.split(" ");

    if (words.length > 3) {
      String firstPart = words.sublist(0, 3).join(" ");
      String secondPart = words.sublist(3).join(" ");
      return "$firstPart\n$secondPart"; // Xuống dòng tại khoảng trắng thứ 3
    }
    return text; // Giữ nguyên nếu chuỗi ngắn
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 220,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: const Color(0xFFEAEAEA).withOpacity(.75),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),

          //Image
          Positioned(
              right: 0,
              child: Image.asset(image)),

          //Button Read
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
                height: 50,
              width: size.width * 0.3,
              decoration: const BoxDecoration(
                color: kBlackColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                )
              ),
              child: TextButton(
                onPressed: () {},
               child: const Text('Read',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,),
               ),
              ),
            ),
          ),


          //Descriptions and title/author
          Positioned(
            top: 40,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: SizedBox(
                    width: 220,
                    child: Text(title,
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),),
                  ),
                ),



                Text(
                  formatText(name),
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(author,
                  style: const TextStyle(
                    color: kLightBlackColor,
                  ),),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: SizedBox(
                    width: 200,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: BookRating(
                              rating: rating),
                        ),
                        Flexible(
                          child: Text(desriptions,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: kLightBlackColor,
                              fontSize: 10,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
