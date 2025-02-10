import 'package:bag_shop/constants.dart';
import 'package:bag_shop/models/product.dart';
import 'package:bag_shop/pages/detail/ui_components/detailPageBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsPage extends StatelessWidget {
  final Product product;
  const DetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body:  DetailPageBody(product: product),
    );
  }



  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset('assets/icons/back.svg',
            color: Colors.white, )),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/search.svg',
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/cart.svg',
              color: Colors.white,
            )),
        const SizedBox(width: defaultDefaultPaddin/2),
      ],
    );
  }
}
