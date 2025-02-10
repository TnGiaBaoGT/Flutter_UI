import 'package:bag_shop/constants.dart';
import 'package:bag_shop/pages/home/ui_component/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }
  
  
  
  
  
   AppBar buildAppBar(){
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/back.svg')),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/search.svg',
            //default the color is white
            color: defaultTextColor,
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/cart.svg',
                color: defaultTextColor)
        ),
        const SizedBox(width: defaultDefaultPaddin / 2),
      ],
    );
  }
}
