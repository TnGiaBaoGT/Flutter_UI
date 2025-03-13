import 'package:dashboard_tranking/constant.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../../data/line_chart_data.dart';

class ChartBoard extends StatelessWidget {
  const ChartBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: cardBackgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2,vertical: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Steps Overview',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w500,
            ),),
            AspectRatio(
                aspectRatio: 16/6,
            child: LineChart(
              LineChartData(
                //Tương tác với chart
                lineTouchData: const LineTouchData(
                  handleBuiltInTouches: true,
                ),
                gridData: const FlGridData(show: false),
                titlesData: FlTitlesData(
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        return data.bottomTitle[value.toInt()] != null
                            ? Text(data.bottomTitle[value.toInt()].toString(),
                                    style: const TextStyle(
                                      fontSize: 12, color: Colors.white))
                            : const SizedBox();
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      reservedSize: 40,
                      getTitlesWidget: (value, meta) {
                        return data.leftTitle[value.toInt()] != null
                            ? Text(data.leftTitle[value.toInt()].toString(),
                        style: const TextStyle(
                          fontSize: 12, color: Colors.white,))
                            : const SizedBox();
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    color: selectionColor,
                    belowBarData: BarAreaData(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          selectionColor.withOpacity(0.5),
                          Colors.transparent,
                        ],
                      ),
                      show: true,
                    ),
                    dotData: const FlDotData(show: false),
                    spots: data.spots,
                  ),
                ],
                minX: 0,
                maxX: 120,
                minY: 0,
                maxY: 105,

              ),
            ),
            ),
          ],
        ),
      ),
    );

  }
}
