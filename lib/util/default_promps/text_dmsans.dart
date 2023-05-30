import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text textDmSans(String text, double size, Color color, FontWeight fontWeight) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: GoogleFonts.dmSans(
        fontSize: size, fontWeight: fontWeight, color: color),
  );
}
