import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';


class Navigaitems extends StatelessWidget {
  final String image;
  final String text;
  final Function()? onTap;
  final bool isSelected;
  const Navigaitems({
    super.key,
    required this.onTap,
    required this.image,
    required this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 7),
          SvgPicture.asset(image,
          colorFilter: isSelected
            ?  const ColorFilter.mode(kActiveIconColor, BlendMode.srcIn)
            :  const ColorFilter.mode(kTextColor, BlendMode.srcIn),
            ),
          Text(text,
          style: TextStyle(
            color: isSelected ? kActiveIconColor : kTextColor
          ),
          ),
        ],
      ),
    );
  }
}

class BottomNavi extends StatefulWidget {
  const BottomNavi({
    super.key,
  });

  @override
  State<BottomNavi> createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int selectedItems = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/3),
      height: 70,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: kShadowColor,
            offset: Offset(0, -10),
            blurRadius: 20,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Navigaitems(
            image: 'assets/icons/calendar.svg',
            text: 'Today',
            isSelected: selectedItems == 1,
            onTap: () {
              setState(() {
                selectedItems = 1;
              });
            },
          ),
          Navigaitems(
            image: 'assets/icons/gym.svg',
            text: 'All Excercises',
            isSelected: selectedItems == 2,
            onTap: () {
              setState(() {
                selectedItems = 2;
              });
            },
          ),
          Navigaitems(
            image: 'assets/icons/Settings.svg',
            text: 'Settings',
            isSelected: selectedItems == 3,
            onTap: () {
              setState(() {
                selectedItems = 3;
              });
            },
          ),
        ],
      ),
    );
  }
}