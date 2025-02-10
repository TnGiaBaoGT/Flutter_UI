import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function()? tap;
  const ItemCard({super.key, required this.product , required this.tap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Images
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(defaultDefaultPaddin),
              //Xài lúc đầu để biết vùng làm
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${product.id}",
                  child: Image.asset(product.image),
            ),
            ),
          ),

          //Text
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultDefaultPaddin/4),
            child: Text(product.title,
              style: const TextStyle(
                color: defaultTextLightColor,
              ),),
          ),

          //Price
          Text('\$${product.price.toString()}',
            style: const TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}
