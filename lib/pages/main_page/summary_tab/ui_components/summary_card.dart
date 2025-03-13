import 'package:flutter/material.dart';

import '../../../../constant.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Summary',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w900,
          ),),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding,vertical: kDefaultPadding),
            decoration: BoxDecoration(
              color: cardBackgroundColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildColumn('Cal','305'),
                buildColumn('Steps','15305'),
                buildColumn('Distance','5km'),
                buildColumn('Sleep','3hr'),
              ],
            ),
          ),
        ),
      ],
    );
  }
  Column buildColumn(String name , String value) {
    return Column(
      children: [
        Text(name,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            )),
        Text(value,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),)
      ],
    );
  }
}
