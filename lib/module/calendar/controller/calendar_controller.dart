import 'package:ebdeskgpt/core.dart';
import 'package:flutter/material.dart';
import 'package:ebdeskgpt/state_util.dart';
import '../view/calendar_view.dart';

class CalendarController extends State<CalendarView> implements MvcController {
  static late CalendarController instance;
  late CalendarView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
