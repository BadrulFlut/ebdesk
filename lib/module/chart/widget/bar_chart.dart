// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BarChart extends StatefulWidget {
  const BarChart({Key? key}) : super(key: key);

  @override
  State<BarChart> createState() => _BarChartState();
}

class _BarChartState extends State<BarChart> {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final List<Map> chartData = [
          {
            "year": 2018,
            "sales": 40,
          },
          {
            "year": 2019,
            "sales": 90,
          },
          {
            "year": 2020,
            "sales": 30,
          },
          {
            "year": 2021,
            "sales": 80,
          },
          {
            "year": 2022,
            "sales": 90,
          }
        ];

        return Container(
          color: Theme.of(context).cardColor,
          padding: const EdgeInsets.all(12.0),
          child: SfCartesianChart(
            isTransposed: true,
            primaryXAxis: NumericAxis(decimalPlaces: 0),
            series: <ChartSeries>[
              BarSeries<Map, int>(
                dataSource: chartData,
                xValueMapper: (Map data, _) => data["year"],
                yValueMapper: (Map data, _) => data["sales"],
              )
            ],
          ),
        );
      },
    );
  }
}
