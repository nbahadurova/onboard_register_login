import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register/constants/app_texts.dart';
import 'package:login_register/constants/app_colors.dart';
import 'package:login_register/extensions/num_extensions.dart';
import 'package:login_register/ui/pages/widgets/login_register_title.dart';

class LoginTextsWidget extends StatelessWidget {
  const LoginTextsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LoginRegisterTitle(text: AppTexts.loginHere),
        25.h,
         Text(
            textAlign: TextAlign.center,
            AppTexts.loginDescription,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            )),
      ],
    );
  }
}
