import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register/constants/app_texts.dart';
import 'package:login_register/constants/app_colors.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(AppTexts.welcomeTitle,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          fontSize: 35,
          fontWeight: FontWeight.w600,
          color: AppColors.blue,
        ));
  }
}
