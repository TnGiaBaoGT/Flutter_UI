import 'package:flutter/material.dart';

import '../../../constants.dart';


class ExcercisesSessions extends StatelessWidget {
  final String name;
  final Function()? onTap;
  final bool isDone;
  const ExcercisesSessions({
    super.key,
    required this.onTap,
    required this.name,
    this.isDone = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(kDefaultPadding/2),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: kShadowColor,
              blurRadius: 20,
              offset: Offset(0, 5),
            ),
          ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Container(
                   height: 40,
                   width: 40,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: isDone ? kBlueColor : Colors.white,
                     border: Border.all(
                       color: kBlueColor,
                     )
                   ),
                   child: Icon(Icons.play_arrow,
                      color: isDone ? Colors.white : kBlueColor,
                      size: 30),
                 ),
                const SizedBox(width: 10),
                Text(name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
