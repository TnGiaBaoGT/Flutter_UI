import 'package:flutter/material.dart';

import '../../../models/product.dart';

class MySize extends StatelessWidget {
  const MySize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Size',style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),),
          Row(
            children: [
              Text(product.size.toString(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              const SizedBox(width:3),
              const Text('cm',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),)
            ],
          )
        ],
      ),
    );
  }
}