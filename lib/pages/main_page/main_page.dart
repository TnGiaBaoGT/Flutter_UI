import 'package:dashboard_tranking/constant.dart';
import 'package:dashboard_tranking/pages/main_page/center_dashboard/dashboard_center.dart';
import 'package:dashboard_tranking/pages/main_page/summary_tab/summary_tab.dart';
import 'package:dashboard_tranking/pages/main_page/ui_components/side_menu.dart';
import 'package:dashboard_tranking/responsive.dart';
import 'package:flutter/material.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final isDesktop = Responsive.isDesktop(context);
    return SafeArea(
      child: Scaffold(
        drawer: !isDesktop
        ? SizedBox(
          width: Responsive.isMobile(context) ? size.width* 0.5 : size.width * 0.3,
          child: const SideMenu(),
        )
        : null,
        endDrawer: Responsive.isMobile(context)
        ? Container(
          color: cardBackgroundColor,
          width: size.width * 0.7,
          child: const SummaryTab(),
        )
        : null,
        body: Row(
          children: [
            if(isDesktop)
            const Expanded(
                flex: 2, //2/12 * 100 = 16%
                child: SizedBox(
                  child: SideMenu(),
                ),
            ),
      
            const Expanded(
              flex: 7, //2/12 * 100 = 16%
              child: SizedBox(
                child: DashboardCenter(),
                ),
              ),
            if(isDesktop)
            const Expanded(
              flex: 3, //2/12 * 100 = 16%
              child: SizedBox(
                child: SummaryTab(),
              ),
              ),
          ],
        ),
      ),
    );
  }
}
