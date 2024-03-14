import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register/constants/app_texts.dart';
import 'package:login_register/constants/app_colors.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key, required this.onPressed});
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        child: Text(AppTexts.register,
            style: GoogleFonts.poppins(
              color: AppColors.darkBlack,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            )),
      ),
    );
  }
}
