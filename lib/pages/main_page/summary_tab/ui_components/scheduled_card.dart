import 'package:dashboard_tranking/constant.dart';
import 'package:dashboard_tranking/data/scheduled_data.dart';
import 'package:flutter/material.dart';

class ScheduledCard extends StatelessWidget {
  const ScheduledCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ScheduledData();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/3),
          child: Text('Scheduled',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700, fontSize: 18,),
          ),
        ),
        const SizedBox(height: kDefaultPadding/2),
        for(int index = 0;index < data.scheduledData.length;index ++)
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding,horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: "${data.scheduledData[index].title}\n",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,)
                      ),
                      TextSpan(
                          text: data.scheduledData[index].note,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey,
                          ),
                      ),
                    ]
                  )),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more))
                ],
              ),
            ),
          ),
      ],
    );
  }
}
