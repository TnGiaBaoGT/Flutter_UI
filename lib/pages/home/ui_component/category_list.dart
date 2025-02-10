import 'package:flutter/material.dart';
import '../../../constants.dart';


class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  List<String> category = ['Hand bag','Jewellery','Footwear','Dresses','Watch'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) {
            final cateInfo = category[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultDefaultPaddin),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Text
                    Text(cateInfo,
                      style: TextStyle(
                        fontWeight:  FontWeight.bold  ,
                        color: selectedIndex == index ? defaultTextColor : defaultTextLightColor,
                      ),),

                    //Line underline
                    Container(
                      height: 2,
                      width: 30,
                      color: selectedIndex == index ? Colors.black : Colors.transparent,
                    )
                  ],
                ),
              ),
            );
          },),
      ),
    );
  }
}