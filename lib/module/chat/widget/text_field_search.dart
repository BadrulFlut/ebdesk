import 'package:ebdeskgpt/util/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldSearchChat extends StatelessWidget {
  const TextFieldSearchChat({
    super.key,
    required this.w,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: 33,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(width: 1, color: const Color(0xFFECF1EC))),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            size: 20.0,
          ),
          hintText: "Search shortcut message",
          hintStyle: GoogleFonts.nunito(
              height: 1.5,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: hintTextColor),
          contentPadding: const EdgeInsets.only(bottom: 10, right: 12),
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
    );
  }
}
