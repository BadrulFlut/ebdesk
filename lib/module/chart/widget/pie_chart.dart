// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChart extends StatefulWidget {
  const PieChart({Key? key}) : super(key: key);

  @override
  State<PieChart> createState() => _PieChartState();
}

class _PieChartState extends State<PieChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          final List<Map> chartData = [
            {
              "year": "Ganjar",
              "sales": 40,
            },
            {
              "year": "Jokowi",
              "sales": 90,
            },
            {
              "year": "Prabowo",
              "sales": 30,
            },
            {
              "year": "Puan",
              "sales": 80,
            },
            {
              "year": "Anis",
              "sales": 90,
            }
          ];

          return Container(
            color: Theme.of(context).cardColor,
            padding: const EdgeInsets.all(12.0),
            child: SfCircularChart(
              legend: Legend(isVisible: true),
              series: <CircularSeries>[
                PieSeries<Map, String>(
                  dataSource: chartData,
                  dataLabelSettings: const DataLabelSettings(
                    isVisible: true,
                  ),
                  xValueMapper: (Map data, _) => data["year"],
                  yValueMapper: (Map data, _) => data["sales"],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
