import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_register/constants/app_texts.dart';
import 'package:login_register/constants/app_assets.dart';
import 'package:login_register/constants/app_colors.dart';
import 'package:login_register/constants/app_paddings.dart';
import 'package:login_register/extensions/num_extensions.dart';
import 'package:login_register/ui/pages/login/login_page.dart';
import 'package:login_register/ui/pages/widgets/global_text.dart';
import 'package:login_register/ui/pages/widgets/global_button.dart';
import 'package:login_register/ui/pages/register/register_page.dart';
import 'package:login_register/ui/pages/welcome/widgets/text_widget.dart';
import 'package:login_register/ui/pages/welcome/widgets/text_button_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppPaddings.h22,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.image),
            10.h,
            const TextWidget(),
            15.h,
            const GlobalText(
              textAlign: TextAlign.center,
                text:
                    AppTexts.welcomeDescription,
                textColor: AppColors.black,
                fontWeight: FontWeight.w400),
            55.h,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GlobalButton(
                  text: AppTexts.login,
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                  },
                ),
                TextButtonWidget(onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterPage(),));
                },),
              ],
            )
          ],
        ),
      ),
    );
  }
}
