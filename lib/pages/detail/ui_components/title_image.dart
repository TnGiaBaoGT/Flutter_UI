import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';

class TilteAndImage extends StatelessWidget {
  const TilteAndImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Aristocratic Hand Bag',
              style: TextStyle(
                color: Colors.white,
              )),
          Text(product.title,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: Colors.white,fontWeight: FontWeight.bold)),

          const SizedBox(height: defaultDefaultPaddin),
          //DETAIL and IMAGE
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: 'Price\n',style: TextStyle(color: Colors.white)),
                    TextSpan(text: '\$${product.price}',style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white,fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              const SizedBox(width: defaultDefaultPaddin+20),
              Expanded(child: Hero(tag: "${product.id}", child: Image.asset(product.image,
                fit: BoxFit.fill,)
              ))
            ],
          ),
        ],
      ),
    );
  }
}