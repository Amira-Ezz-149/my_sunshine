import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value, _) => const TextStyle(
            color: Color(0xff68737d),
            fontSize: 12,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return 'Su';
              case 2:
                return 'Mo';
              case 3:
                return 'TU';
              case 4:
                return 'We';
              case 5:
                return 'Th';
              case 6:
                return 'Fi';
              case 7:
                return 'Sa';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value, _) => const TextStyle(
            color: Color(0xff67727d),
            fontSize: 12,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '1';
              case 2:
                return '2';
              case 3:
                return '3';
              case 4:
                return '4';
            }
            return '';
          },
          reservedSize: 15,
        ),
      );
}
