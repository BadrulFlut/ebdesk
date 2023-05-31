import 'package:ebdeskgpt/util/color/colors.dart';
import 'package:ebdeskgpt/util/default_promps/text_nunito.dart';
import 'package:flutter/material.dart';

class MenuAi extends StatelessWidget {
  VoidCallback button;
  String title;
  String desc;
  MenuAi({
    required this.button,
    required this.title,
    required this.desc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: button,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icons/ebdesk_green.png'))),
              ),
              const SizedBox(
                width: 8.0,
              ),
              textNunito(title, 14, Colors.black, FontWeight.w400),
            ],
          ),
          const SizedBox(
            height: 4.0,
          ),
          textNunito(desc, 14, hintTextColor, FontWeight.w400)
        ],
      ),
    );
  }
}
