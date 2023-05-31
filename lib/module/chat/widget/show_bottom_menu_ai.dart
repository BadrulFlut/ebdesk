import 'package:ebdeskgpt/module/chat/widget/menu_ai.dart';
import 'package:flutter/material.dart';

class ShowBottomMenuAi extends StatelessWidget {
  const ShowBottomMenuAi({
    super.key,
    required this.w,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: 224,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 5,
            decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(20)),
          ),
          const SizedBox(
            height: 20.0,
          ),
          MenuAi(
              button: () {},
              title: "eBChat",
              desc: "Search accross the internet and  focuses"),
          const SizedBox(
            height: 12.0,
          ),
          MenuAi(
              button: () {},
              title: "eBImage",
              desc: "Discover in published All Images"),
          const SizedBox(
            height: 12.0,
          ),
          MenuAi(
              button: () {},
              title: "eBChart",
              desc: "Create chart visualization from bot with text")
        ],
      ),
    );
  }
}
