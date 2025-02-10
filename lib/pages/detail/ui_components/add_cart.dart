import 'package:bag_shop/constants.dart';
import 'package:bag_shop/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddCart extends StatelessWidget {
  final Product product;
  const AddCart({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Container(
            height: 50,
            width: 58,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: product.color,
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(18),
            ),
            child: IconButton(
              onPressed: () {},
                icon: SvgPicture.asset('assets/icons/add_to_cart.svg')),
          ),
          const SizedBox(width:10),
          Expanded(
            child: SizedBox(
              height: 50,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                color: product.color,
                  onPressed: () {},
                  child: const Text('Buy Now',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),)),
            ),
          )
        ],
    );
  }
}
