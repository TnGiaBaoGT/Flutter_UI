import 'package:bag_shop/constants.dart';
import 'package:bag_shop/models/product.dart';
import 'package:bag_shop/pages/detail/details_page.dart';
import 'package:bag_shop/pages/home/ui_component/item_card.dart';
import 'package:flutter/material.dart';
import 'category_list.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultDefaultPaddin),
          child: Text('Women',style: Theme.of(context)
          .textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
       const Categories(),

        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultDefaultPaddin
              ),
              child: GridView.builder(
                itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                  mainAxisSpacing: defaultDefaultPaddin,
                  crossAxisSpacing: defaultDefaultPaddin,
                  childAspectRatio: 0.75),
                itemBuilder: (context, index) {
                  return ItemCard(
                    product: products[index],
                    tap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => DetailsPage(product: products[index])
                      ));
                    },
                  );
                },
              ),
            ))
      ],
    );
  }
}






