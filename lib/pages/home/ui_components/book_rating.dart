import 'package:flutter/material.dart';

import '../../../consttants.dart';


class BookRating extends StatelessWidget {
  final double rating;
  const BookRating({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow:[
          BoxShadow(
            blurRadius: 20,
            offset: const Offset(7, 0),
            color: Colors.black.withOpacity(0.2),
          ),
        ],
      ),
      child:  Column(
        children: [
          const Icon(Icons.star,
            color: kIconColor,
            size: 15,
          ),
          Text('$rating',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),)
        ],
      ),
    );
  }
}
