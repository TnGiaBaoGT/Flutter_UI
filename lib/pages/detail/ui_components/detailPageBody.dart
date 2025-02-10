import 'package:bag_shop/constants.dart';
import 'package:bag_shop/models/product.dart';
import 'package:bag_shop/pages/detail/ui_components/add_cart.dart';
import 'package:bag_shop/pages/detail/ui_components/amount_fav.dart';
import 'package:bag_shop/pages/detail/ui_components/size.dart';
import 'package:bag_shop/pages/detail/ui_components/title_image.dart';
import 'package:flutter/material.dart';

import 'color_dot.dart';

class DetailPageBody extends StatelessWidget {
  final Product product;
  const DetailPageBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
              SizedBox(
                height: size.height,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.3),
                      padding: EdgeInsets.only(top: size.height * 0.12 , left: defaultDefaultPaddin),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        )
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              //COLOR DOT
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Color',style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),),
                                    Row(
                                      children: [
                                        ColorDot(color: Color(0xFF356C95),
                                        isSelected: true),
                                        ColorDot(color: Color(0xFFF8C078)),
                                        ColorDot(color: Color(0xFFA29B9B)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              
                              //SIZE
                              MySize(product: product),

                            ],
                          ),

                          //DESCRIPTION
                          Padding(
                            padding: const EdgeInsets.only(top: defaultDefaultPaddin,bottom: defaultDefaultPaddin),
                            child: Text(product.description,
                            style: const TextStyle(
                              fontSize: 15,
                              height: 1.5,
                            ),),
                          ),
                          //DESCRIPTION--


                          //AMOUNT_FAV
                          const Padding(
                            padding: EdgeInsets.only(right: defaultDefaultPaddin),
                            child: AmountFav(),
                          ),

                          //ADD_CART
                          Padding(
                            padding: const EdgeInsets.only(
                                right: defaultDefaultPaddin,
                            top: defaultDefaultPaddin+20),
                            child: AddCart(product: product),
                          ),
                        ],
                      ),
                    ),

                    //TITLE IMAGE
                    TilteAndImage(product: product),
                  ],
                ),
                ),
            ],
      ),
    );
  }
}






