import 'package:flutter/material.dart';
import 'package:login_register/constants/app_texts.dart';
import 'package:login_register/constants/app_colors.dart';
import 'package:login_register/constants/app_paddings.dart';
import 'package:login_register/extensions/num_extensions.dart';
import 'package:login_register/ui/pages/login/login_page.dart';
import 'package:login_register/ui/pages/widgets/global_text.dart';
import 'package:login_register/ui/pages/widgets/bottom_column.dart';
import 'package:login_register/ui/pages/widgets/global_button.dart';
import 'package:login_register/ui/pages/widgets/login_register_title.dart';
import 'package:login_register/ui/pages/register/widgets/register_inputs_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPaddings.h22 + AppPaddings.t90,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const LoginRegisterTitle(text: AppTexts.createAccount),
              10.h,
              const GlobalText(
                  text: AppTexts.registerDescription,
                  textColor: AppColors.black,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.center),
              45.h,
              const RegisterInputsWidget(),
              50.h,
              Row(
                children: [
                  GlobalButton(
                    text: AppTexts.signIn,
                    onPressed: () {},
                  ),
                ],
              ),
              30.h,
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                },
                child: const GlobalText(
                    text: AppTexts.haveAccount,
                    textColor: AppColors.grey,
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.center),
              ),
              70.h,
              const BottomColumn()
            ],
          ),
        ),
      ),
    );
  }
}
