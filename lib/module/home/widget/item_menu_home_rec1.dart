import 'package:flutter/material.dart';
import '../../../util/default_promps/text_robot.dart';

class ItemMenuHomeRec1 extends StatelessWidget {
  String title;
  VoidCallback button;
  ItemMenuHomeRec1({
    required this.title,
    required this.button,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: button,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1, color: const Color(0xFFECF1EC))),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        child: textRobot(title, 12, Colors.black, FontWeight.w400),
      ),
    );
  }
}
