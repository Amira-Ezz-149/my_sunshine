import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../constants.dart';
// import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class LineChart extends StatefulWidget {
  @override
  _LineChartState createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  List<SalesData> _chartData;
  TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  int leftDiceNumber = 1981;
  int rightDiceNumber = 37;

  void displayNum() {
    setState(() {
      leftDiceNumber = Random().nextInt(40) + 1;
      rightDiceNumber = Random().nextInt(20) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      title: ChartTitle(text: 'Yearly sales analysis'),
      legend: Legend(isVisible: true),
      tooltipBehavior: _tooltipBehavior,
      series: <SplineSeries>[
        SplineSeries<SalesData, int>(
            name: 'Sales',
            dataSource: _chartData,
            xValueMapper: (SalesData sales, _) => sales.year,
            yValueMapper: (SalesData sales, _) => sales.sales,
            dataLabelSettings: DataLabelSettings(isVisible: true),
            enableTooltip: true,
            color: basicColor,
            width: 2,
            opacity: 1,
            splineType: SplineType.cardinal,
            cardinalSplineTension: 0.9)
      ],
      primaryXAxis: NumericAxis(
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        // numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0)
      ),
      primaryYAxis: NumericAxis(
        labelFormat: '{value}',
      ),
    );
  }

  List<SalesData> getChartData() {
    final List<SalesData> chartData = [
      SalesData(201901, 101.58),
      SalesData(201902, 101.66),
      SalesData(201903, 101.54),
      SalesData(201904, 101.41),
      SalesData(201905, 101.16),
      SalesData(201906, 100.97),
      SalesData(201907, 100.71),
      SalesData(201908, 100.79),
      // SalesData(leftDiceNumber, rightDiceNumber.toDouble()),
      // SalesData(leftDiceNumber, rightDiceNumber.toDouble()),
      // SalesData(leftDiceNumber, rightDiceNumber.toDouble()),
      // SalesData(leftDiceNumber, rightDiceNumber.toDouble()),
      // SalesData(leftDiceNumber, rightDiceNumber.toDouble()),
      // SalesData(leftDiceNumber, rightDiceNumber.toDouble()),
      // SalesData(leftDiceNumber, rightDiceNumber.toDouble()),

      // SalesData(2017, 25),
      // SalesData(2018, 12),
      // SalesData(2019, 24),
      // SalesData(2020, 18),
      // SalesData(2021, 30),
      // SalesData(2023, 50),
      // SalesData(2022, 40),
      // SalesData(2025, 20),
      // SalesData(2029, 6),

      // SalesData("201909", 101.11),
      // SalesData("201910", 101.32),
      // SalesData("201911", 101.46),
      // SalesData("201912", 101.67),
      // SalesData("201913", 101.28),
      // SalesData("202001", 101.94),
      // SalesData("202002", 101.82),
      // SalesData("202003", 101.28),
      // SalesData("202004", 101.34),
      // SalesData("202005", 101.31),
      // SalesData("202006", 100.99),
      // SalesData("202007", 100.62),
      // SalesData("202008", 100.63),
      // SalesData("202009", 101.02),
      // SalesData("202010", 101.43),
      // SalesData("202011", 101.59),
      // SalesData("202012", 101.67),
      // SalesData("202013", 101.3)
    ];
    return chartData;
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final int year;
  final double sales;
}
