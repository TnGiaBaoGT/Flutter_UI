import 'package:dashboard_tranking/constant.dart';
import 'package:dashboard_tranking/pages/main_page/summary_tab/ui_components/custom_pie_chart.dart';
import 'package:dashboard_tranking/pages/main_page/summary_tab/ui_components/scheduled_card.dart';
import 'package:dashboard_tranking/pages/main_page/summary_tab/ui_components/summary_card.dart';
import 'package:flutter/material.dart';

class SummaryTab extends StatelessWidget {
  const SummaryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
      child: Column(
        children: [
          //Pie Chart ---------------
          SizedBox(height: kDefaultPadding),
          CustomPieChart(),
          //Summary Card--------------
          SizedBox(height: kDefaultPadding/2),
          SummaryCard(),
          //Scheduled --------------------
          SizedBox(height: kDefaultPadding/2),
          ScheduledCard(),
        ],
      ),
    );
  }


}
