import 'package:flutter/material.dart';
import 'package:login_register/constants/app_texts.dart';
import 'package:login_register/constants/app_colors.dart';
import 'package:login_register/ui/pages/widgets/global_text.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const GlobalText(
        textAlign: TextAlign.right,
          text: AppTexts.forgotPassword,
          textColor: AppColors.blue,
          fontWeight: FontWeight.w600),
    );
  }
}
