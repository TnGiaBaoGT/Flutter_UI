import 'package:dashboard_tranking/constant.dart';
import 'package:dashboard_tranking/pages/main_page/center_dashboard/ui_components/chart_bar.dart';
import 'package:dashboard_tranking/pages/main_page/center_dashboard/ui_components/chart_board.dart';
import 'package:dashboard_tranking/pages/main_page/center_dashboard/ui_components/heath_card.dart';
import 'package:dashboard_tranking/pages/main_page/center_dashboard/ui_components/my_search_bar.dart';
import 'package:dashboard_tranking/pages/main_page/summary_tab/summary_tab.dart';
import 'package:dashboard_tranking/responsive.dart';
import 'package:flutter/material.dart';


class DashboardCenter extends StatefulWidget {
  const DashboardCenter({super.key});

  @override
  State<DashboardCenter> createState() => _DashboardCenterState();
}

class _DashboardCenterState extends State<DashboardCenter> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding,horizontal: kDefaultPadding/1.5),
        child: Column(
          children: [
            //Search bar --------------------------
            const MySearchBar(),

            //Heath card ------------------------------
            const HeathCard(),

            //Chart ---------------------------------
            const ChartBoard(),

            //ChartBar------------------------------
            const ChartBar(),

            if(Responsive.isTablet(context))
              const SummaryTab(),
          ],
        ),
      ),
    );
  }
}


