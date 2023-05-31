import 'package:flutter/material.dart';
import 'package:ebdeskgpt/state_util.dart';
import '../view/chart_view.dart';

class ChartController extends State<ChartView> implements MvcController {
  static late ChartController instance;
  late ChartView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

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

  final List<Map> chartDataPie = [
    {
      "year": "Jan",
      "sales": 40,
    },
    {
      "year": "Feb",
      "sales": 90,
    },
    {
      "year": "Mar",
      "sales": 30,
    },
    {
      "year": "Apr",
      "sales": 80,
    },
    {
      "year": "May",
      "sales": 90,
    }
  ];
}
