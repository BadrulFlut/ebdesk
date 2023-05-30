import 'package:flutter/material.dart';
import 'package:ebdeskgpt/core.dart';
import '../controller/calendar_controller.dart';

class CalendarView extends StatefulWidget {
  const CalendarView({Key? key}) : super(key: key);

  Widget build(context, CalendarController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Calendar"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<CalendarView> createState() => CalendarController();
}