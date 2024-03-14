import 'package:flutter/material.dart';
import 'package:login_register/constants/app_texts.dart';
import 'package:login_register/constants/app_colors.dart';
import 'package:login_register/extensions/num_extensions.dart';
import 'package:login_register/ui/pages/widgets/global_text.dart';
import 'package:login_register/ui/pages/widgets/icon_widget.dart';

class BottomColumn extends StatelessWidget {
  const BottomColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const GlobalText(
          text: AppTexts.continueWith,
          textColor: AppColors.blue,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.center,
        ),
        20.h,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const IconWidget(icon: Icons.g_mobiledata_sharp),
            10.w,
            const IconWidget(icon: Icons.facebook,),
            10.w,
            const IconWidget(icon: Icons.apple,),
          ],
        )
      ],
    );
  }
}
