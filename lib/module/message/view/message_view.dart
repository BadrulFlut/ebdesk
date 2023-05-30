import 'package:flutter/material.dart';
import 'package:ebdeskgpt/core.dart';
import '../controller/message_controller.dart';

class MessageView extends StatefulWidget {
  const MessageView({Key? key}) : super(key: key);

  Widget build(context, MessageController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Message"),
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
  State<MessageView> createState() => MessageController();
}