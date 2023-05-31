import 'package:ebdeskgpt/util/default_promps/text_nunito.dart';
import 'package:flutter/material.dart';

class ButtonOpsi extends StatelessWidget {
  VoidCallback button;
  String title;
  ButtonOpsi({
    required this.button,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: button,
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: const BoxDecoration(color: Colors.black
                // image: DecorationImage(image: AssetImage(""))
                ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          textNunito(title, 14, Colors.black, FontWeight.w400)
        ],
      ),
    );
  }
}
