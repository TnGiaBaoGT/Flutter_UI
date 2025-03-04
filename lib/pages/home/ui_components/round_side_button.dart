import 'package:flutter/material.dart';

import '../../../consttants.dart';


class RoundSideButton extends StatelessWidget {
  final String text;
  final double radius;
  final Function()? onTap;
  const RoundSideButton({
    super.key,
    required this.text,
    required this.radius,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child:GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          width: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(radius),
              topLeft: Radius.circular(radius),
            ),
            color: kBlackColor,
          ),
          child: Text(text,
            style: const TextStyle(
              color: Colors.white,
            ),),
        ),
      ),
    );
  }
}
