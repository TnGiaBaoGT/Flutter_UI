import 'package:dashboard_tranking/model/heath_class.dart';
import 'package:dashboard_tranking/responsive.dart';
import 'package:flutter/material.dart';
import '../../../../constant.dart';
import '../../../../data/heath_card_data.dart';


class HeathCard extends StatelessWidget {
  const HeathCard({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final heath = HeathCardData();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
            childAspectRatio: 1,
            crossAxisSpacing: Responsive.isMobile(context) ? 12 : kDefaultPadding*1.3,
            mainAxisSpacing: 12,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: heath.heathCard.length,
          itemBuilder: (context, index) {
            final dataH = heath.heathCard[index];
            return Container(
              // padding: EdgeInsets.symmetric(vertical: kDefaultPadding,horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: cardBackgroundColor,
              ),
              child: buildPadding(dataH, context),
            );
          },

        ),
    );
  }



  Padding buildPadding(HealthCard dataH, BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(kDefaultPadding/2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(dataH.image,
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(height:10),
                  Text(dataH.nums,
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(height:10),
                  Text(dataH.title,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            );
  }
}
