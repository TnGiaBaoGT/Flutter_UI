import 'package:flutter/material.dart';

import '../../../consttants.dart';


class ChaptersCard extends StatelessWidget {
  const ChaptersCard({
    super.key,
    required this.size,
    required this.name,
    required this.mess,
    required this.onPressed,
  });

  final Size size;
  final String name;
  final String mess;
  final Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
        width: size.width * 0.85,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: kShadowColor,
              offset: const Offset(0, 5),
              blurRadius: 25,
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: RichText(text:TextSpan(
                  children: [
                    TextSpan(
                        text: '$name\n',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: kBlackColor,
                        )
                    ),
                    TextSpan(
                        text: mess,
                        style: const TextStyle(
                          color: kLightBlackColor,
                          fontSize: 13,
                        )
                    )
                  ]
              )),
            ),
            const Spacer(),
            IconButton(
                onPressed: onPressed,
                icon: const Icon(Icons.arrow_forward_ios,
                  size: 16,))
          ],
        ),
      ),
    );
  }
}
