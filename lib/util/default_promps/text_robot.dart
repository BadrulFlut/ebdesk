import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text textRobot(String text, double size, Color color, FontWeight fontWeight) {
  return Text(
    text,
    textAlign: TextAlign.left,
    style: GoogleFonts.roboto(
        height: 1.5, fontSize: size, fontWeight: fontWeight, color: color),
  );
}
