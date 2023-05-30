import 'package:ebdeskgpt/util/default_promps/text_robot.dart';
import 'package:flutter/material.dart';

class ItemMenuHomeRec2 extends StatelessWidget {
  String icon;
  String title;
  ItemMenuHomeRec2({
    required this.icon,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          alignment: Alignment.center,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xFFFCFCFC)),
          child: Container(
            width: 24,
            height: 24,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(icon))),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        textRobot(title, 12, Colors.black, FontWeight.w400)
      ],
    );
  }
}
