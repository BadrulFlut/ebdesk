import 'package:ebdeskgpt/core.dart';
import 'package:ebdeskgpt/util/default_promps/text_robot.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../util/color/colors.dart';

class textFieldLoginPassword extends StatefulWidget {
  String? text;
  TextEditingController controller;
  String? hintText;
  textFieldLoginPassword({
    required this.text,
    required this.controller,
    required this.hintText,
    super.key,
  });

  @override
  State<textFieldLoginPassword> createState() => _textFieldLoginPasswordState();
}

class _textFieldLoginPasswordState extends State<textFieldLoginPassword> {
  bool visible = false;

  onVisit() {
    setState(() {
      visible = !visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textRobot(widget.text!, 14, Colors.black, FontWeight.w500),
        const SizedBox(
          height: 12.0,
        ),
        TextFormField(
          obscureText: visible,
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: hintTextColor),
            suffixIconColor: Colors.black,
            suffixIcon: IconButton(
                onPressed: () {
                  onVisit();
                },
                icon: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/eye.png"))),
                )),
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
