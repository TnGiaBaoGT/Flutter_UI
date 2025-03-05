import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';


class MySearchBar extends StatelessWidget {
  final double width;
  const MySearchBar({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        height: 45,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search',
              hintStyle: const TextStyle(color: kLightTextColor),
              icon: SvgPicture.asset('assets/icons/search.svg',
                colorFilter: const ColorFilter.mode(kLightTextColor, BlendMode.srcIn),
              )
          ),
        ),
      ),
    );
  }
}
