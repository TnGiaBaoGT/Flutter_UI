import 'package:bag_shop/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AmountFav extends StatefulWidget {
  const AmountFav({super.key});

  @override
  State<AmountFav> createState() => _AmountFavState();
}

class _AmountFavState extends State<AmountFav> {
  int numberOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildContainer(
          press: () {
            if (numberOfItems > 1){
              setState(() {
                numberOfItems --;
              });
            }
          },
          icon: Icons.remove,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultDefaultPaddin/2),
          child: Text(numberOfItems.toString().padLeft(2,'0'),
            style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.w400),
          ),
        ),
        buildContainer(
          press: () {
            setState(() {
              numberOfItems ++;
            });
          },
          icon: Icons.add,
        ),
        
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(6),
          height: 33,
          width: 33,
          decoration: const BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset('assets/icons/heart.svg'),
        )
      ],
    );
  }

  Container buildContainer({
    required IconData icon,
    required Function() press,
  }){
    return Container(
        height: 30,
        width: 40,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 0.9,
          ),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: GestureDetector(
            onTap: press,
            child: Icon(icon),
          ),
        ),
      );
  }
}
