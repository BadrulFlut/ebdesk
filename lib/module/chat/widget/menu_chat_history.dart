import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuChatHistory extends StatelessWidget {
  String text;
  MenuChatHistory({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: const BoxDecoration(color: Colors.black
              // image: DecorationImage(image: AssetImage(""))
              ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Container(
              child: Text(
            text,
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.nunito(
                height: 1.5,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black),
          )),
        ),
      ],
    );
  }
}
