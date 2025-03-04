import 'package:flutter/material.dart';

import '../../../consttants.dart';

class ContinueReadingCard extends StatelessWidget {
  const ContinueReadingCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(60),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.5),
                blurRadius: 30,
                offset: const Offset(0, 5)
            )
          ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(38.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding:
                const EdgeInsets.only(left: 30, right: 20),
                child: Row(
                  children: [
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Crushing & Influence",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Gary Venchuk",
                            style: TextStyle(
                              color: kLightBlackColor,
                            ),
                          ),
                          Align(
                            alignment:
                            Alignment.bottomRight,
                            child: Text(
                              "Chapter 7 of 10",
                              style: TextStyle(
                                fontSize: 10,
                                color: kLightBlackColor,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/images/book-1.png",
                      width: 55,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 7,
              width: size.width * .65,
              decoration: BoxDecoration(
                color: kProgressIndicator,
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
