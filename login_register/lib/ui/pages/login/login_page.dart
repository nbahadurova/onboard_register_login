import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:login_register/constants/app_texts.dart';
import 'package:login_register/constants/app_colors.dart';
import 'package:login_register/constants/app_paddings.dart';
import 'package:login_register/extensions/num_extensions.dart';
import 'package:login_register/ui/pages/widgets/global_text.dart';
import 'package:login_register/ui/pages/widgets/input_widget.dart';
import 'package:login_register/ui/pages/widgets/global_button.dart';
import 'package:login_register/ui/pages/widgets/bottom_column.dart';
import 'package:login_register/ui/pages/register/register_page.dart';
import 'package:login_register/ui/pages/login/widgets/login_texts_widget.dart';
import 'package:login_register/ui/pages/login/widgets/forgot_password_widget.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    late final FocusNode emailFocus = FocusNode();
  late final FocusNode passwordFocus = FocusNode();
  late final formkey = GlobalKey<FormState>();
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
              const LoginTextsWidget(),
              55.h,
              InputWidget(
                hintText: AppTexts.email,
                keyboardType: TextInputType.emailAddress,
                color: AppColors.blue,
                focus: emailFocus,
                onFieldSubmitted: (v) => FocusScope.of(context).requestFocus(passwordFocus),
                validator: (v) {
                  
                  if (v == null || v.isEmpty) {
                    return 'invalid email';
                  }
                  return null;
                },
              ),
              25.h,
               InputWidget(
                isObsecure: true,
                hintText: AppTexts.password,
                keyboardType: TextInputType.number,
                color: AppColors.inputColor,
                focus: passwordFocus,
              ),
              25.h,
              const ForgotPasswordWidget(),
              10.h,
              Row(
                children: [
                  GlobalButton(
                    text: AppTexts.signIn,
                    onPressed: () {
                      if (formkey.currentState != null &&
                          formkey.currentState!.validate()) {
                            log('message');
                            return;
                      }
                    },
                  ),
                ],
              ),
              35.h,
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterPage(),));
                },
                child: const GlobalText(
                  text: AppTexts.newAccount,
                  textColor: AppColors.grey,
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.center,
                ),
              ),
              70.h,
              const BottomColumn(),
            ],
          ),
        ),
      ),
    );
  }
}
