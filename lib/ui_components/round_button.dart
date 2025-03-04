import 'package:flutter/material.dart';


class RoundButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  final double verticalPadiing;
  const RoundButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.verticalPadiing,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding:  EdgeInsets.symmetric(vertical: verticalPadiing,horizontal: 50),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 40,
                  offset: const Offset(0, 10)
              )
            ]
        ),
        child: Text(text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
