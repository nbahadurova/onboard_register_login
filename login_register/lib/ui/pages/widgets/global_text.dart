import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class GlobalText extends StatelessWidget {
  const GlobalText(
      {super.key,
      required this.text,
      required this.textColor,
      required this.fontWeight,
      required this.textAlign});
  final String text;
  final Color textColor;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: fontWeight,
        color: textColor,
      ),
      
    );
  }
}
