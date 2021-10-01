import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:my_sunshine/widgets/chart_data.dart';

class ChartWidget extends StatelessWidget {
  final List<Color> gradientColors = [
    const Color(0xff0981BC),
    const Color(0xff23b6e6),
  ];

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
          minY: 0,
          maxY: 5,
          titlesData: LineTitles.getTitleData(),
          gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 0.7,
              );
            },
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(
              color: Colors.grey,
              width: 0.4,
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 0),
                FlSpot(1, 3),
                FlSpot(2, 2.1),
                FlSpot(3, 3),
                FlSpot(4, 3.1),
                FlSpot(5, 2.5),
                FlSpot(6, 3.9),
                FlSpot(7, 4),
              ],
              isCurved: true,
              colors: gradientColors,
              barWidth: 2,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                colors: gradientColors
                    .map((color) => color.withOpacity(0.3))
                    .toList(),
              ),
            ),
          ],
        ),
      );
}
