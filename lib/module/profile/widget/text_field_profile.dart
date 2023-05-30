import 'package:ebdeskgpt/core.dart';
import 'package:ebdeskgpt/util/default_promps/text_nunito.dart';
import 'package:ebdeskgpt/util/default_promps/text_robot.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../util/color/colors.dart';

class textFieldProfile extends StatelessWidget {
  String? text;
  TextEditingController controller;
  String? hintText;
  textFieldProfile({
    required this.text,
    required this.controller,
    required this.hintText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textNunito(text!, 14, Colors.black, FontWeight.w500),
        const SizedBox(
          height: 12.0,
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: hintTextColor),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFEAEAEA)),
                borderRadius: BorderRadius.all(Radius.circular(6))),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFEAEAEA)),
                borderRadius: BorderRadius.all(Radius.circular(6))),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFEAEAEA)),
                borderRadius: BorderRadius.all(Radius.circular(6))),
          ),
        ),
      ],
    );
  }
}
