import 'package:ebdeskgpt/util/color/colors.dart';
import 'package:ebdeskgpt/util/default_promps/text_robot.dart';
import 'package:flutter/material.dart';

class ItemRecentlyChat extends StatelessWidget {
  String text;
  ItemRecentlyChat({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 250,
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: hintTextColor.withOpacity(0.6),
          ),
          borderRadius: BorderRadius.circular(6)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/icons/message.png")),
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Container(
              child: textRobot(text, 14, hintTextColor, FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
