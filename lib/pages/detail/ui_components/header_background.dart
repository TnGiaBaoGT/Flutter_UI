import 'package:flutter/material.dart';


class HeaderbackGround extends StatelessWidget {
  const HeaderbackGround({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.45,
      decoration: const BoxDecoration(
          color: Color(0xFFB89DE8),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
          image: DecorationImage(image: AssetImage('assets/images/meditation_bg.png'),
              fit: BoxFit.fitWidth)
      ),
    );
  }
}
