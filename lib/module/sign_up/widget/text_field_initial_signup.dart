import 'package:flutter/material.dart';

import '../../../util/color/colors.dart';
import '../../../util/default_promps/text_robot.dart';

class TextFieldInitialSignup extends StatelessWidget {
  String title;
  String inital;
  TextEditingController controller;
  TextFieldInitialSignup({
    required this.title,
    required this.inital,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textRobot(title, 14, Colors.black, FontWeight.w400),
        const SizedBox(
          height: 12.0,
        ),
        Row(
          children: [
            Container(
              width: 52,
              height: 42,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6)),
                  border: Border.all(
                      width: 1, color: Colors.grey.withOpacity(0.2))),
              child: textRobot(inital, 14, hintTextColor, FontWeight.w500),
            ),
            Expanded(
                child: Container(
              height: 42,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(6),
                      bottomRight: Radius.circular(6)),
                  border:
                      Border.all(width: 1, color: Colors.grey.withOpacity(0.2)),
                  color: const Color(0xFFFCFCFC)),
              child: TextFormField(
                controller: controller,
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
            ))
          ],
        )
      ],
    );
  }
}
