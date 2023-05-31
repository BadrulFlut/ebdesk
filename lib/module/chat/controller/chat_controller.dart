import 'package:flutter/material.dart';
import 'package:ebdeskgpt/state_util.dart';
import '../view/chat_view.dart';

class ChatController extends State<ChatView> implements MvcController {
  static late ChatController instance;
  late ChatView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  TextEditingController searchController = TextEditingController();

  List<Map<String, dynamic>> dataChat = [
    {
      "id": 1,
      "text": "Apa chart yang bagus untuk kategorisasi dashboard?",
      "isMe": true
    },
    {
      "id": 2,
      "text":
          "Ada banyak jenis chart yang dapat digunakan untuk kategorisasi data dalam sebuah dashboard. Namun, beberapa jenis chart yang paling umum digunakan untuk kategorisasi dashboard adalah",
      "isMe": false
    },
    {
      "id": 3,
      "text": "Apa chart yang bagus untuk kategorisasi dashboard?",
      "isMe": true
    }
  ];

  List<String> chatHistory = [
    "Remembers what user said earlier in the convers ation",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ",
    "incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ",
    "quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  ];
}
