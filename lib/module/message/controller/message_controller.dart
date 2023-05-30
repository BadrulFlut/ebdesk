import 'package:flutter/material.dart';
import 'package:ebdeskgpt/state_util.dart';
import '../view/message_view.dart';

class MessageController extends State<MessageView> implements MvcController {
  static late MessageController instance;
  late MessageView view;

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