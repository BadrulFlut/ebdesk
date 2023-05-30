import 'package:ebdeskgpt/module/calendar/view/calendar_view.dart';
import 'package:ebdeskgpt/module/message/view/message_view.dart';
import 'package:ebdeskgpt/module/profile/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:ebdeskgpt/state_util.dart';
import '../view/home_view.dart';

class HomeController extends State<HomeView> implements MvcController {
  static late HomeController instance;
  late HomeView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int currentTab = 0;

  List<Widget> pages = [
    const HomeView(),
    const CalendarView(),
    const MessageView(),
    const ProfileView(),
  ];
  Widget currentScreen = const HomeView();

  void currentTabItem(int index) {
    setState(() {
      currentTab = index;
    });
  }
}
