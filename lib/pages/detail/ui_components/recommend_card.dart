import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';


class RecommendCard extends StatelessWidget {
  final String title;
  final String desr;
  final String image;
  const RecommendCard({
    super.key,
    required this.image,
    required this.title,
    required this.desr,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding/2),
      padding: const EdgeInsets.all(kDefaultPadding),
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(image),
          RichText(text: TextSpan(
            children: [
              TextSpan(
                text: '$title\n',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: desr,
                style: const TextStyle(
                  color: kTextColor,
                  height: 2,
                ),
              ),
            ],
          )),

          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset('assets/icons/Lock.svg'),
          )
        ],
      ),
    );
  }
}
