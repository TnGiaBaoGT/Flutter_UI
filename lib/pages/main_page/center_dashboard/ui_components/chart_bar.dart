import 'package:dashboard_tranking/constant.dart';
import 'package:dashboard_tranking/data/bar_graph_data.dart';
import 'package:dashboard_tranking/model/graph_class.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class ChartBar extends StatelessWidget {
  const ChartBar({super.key});

  @override
  Widget build(BuildContext context) {
    final barGraphData = BarGraphData();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:kDefaultPadding, horizontal: kDefaultPadding/4),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 5,
            childAspectRatio: 1,
          ),
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          itemCount: barGraphData.barGraphData.length,
          itemBuilder: (context, index) {
            final barData = barGraphData.barGraphData[index];
            return Container(
              padding: const EdgeInsets.all(kDefaultPadding/2),
              decoration: BoxDecoration(
                color: cardBackgroundColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  Text(barData.label,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),),
                  const SizedBox(height: 10),
                  Expanded(
                      child: BarChart(
                        BarChartData(
                          barGroups: _chartGroups(
                            points: barData.graph,
                            color: barData.color,
                          ),
                          borderData: FlBorderData(border: const Border()),
                          gridData: const FlGridData(show: false),
                          titlesData: FlTitlesData(
                            topTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            rightTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                              leftTitles: const AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      barGraphData.label[value.toInt()],
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  );
                                },
                              )
                            )

                          ),
                          minY: 0,
                          maxY: 10,
                        ),
                      ),
                  ),

                ],
              ),
            );
          },),
    );
  }
}

List<BarChartGroupData> _chartGroups({required List<GraphClass> points, required Color color}) {
  return points
      .map((point) => BarChartGroupData(x: point.x.toInt(), barRods: [
        BarChartRodData(
            toY: point.y,
            width: 12,
            color: color.withOpacity(point.y.toInt() > 4 ? 1 : 0.4),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(3),
            topLeft: Radius.circular(3),
          ),
        ),
        ]))
      .toList();
    }



