import 'package:flutter/material.dart';
import 'package:login_register/constants/app_texts.dart';
import 'package:login_register/constants/app_colors.dart';
import 'package:login_register/extensions/num_extensions.dart';
import 'package:login_register/ui/pages/widgets/input_widget.dart';

class RegisterInputsWidget extends StatefulWidget {
  const RegisterInputsWidget({super.key});

  @override
  State<RegisterInputsWidget> createState() => _RegisterInputsWidgetState();
}

class _RegisterInputsWidgetState extends State<RegisterInputsWidget> {
    final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  final FocusNode confirmPasswordFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        InputWidget(
              hintText: AppTexts.email,
              keyboardType: TextInputType.emailAddress,
              color: AppColors.blue,
              focus: emailFocus,
              onFieldSubmitted: (v) => FocusScope.of(context).requestFocus(passwordFocus),
            ),
            25.h,
             InputWidget(
              isObsecure: true,
              hintText: AppTexts.password,
              keyboardType: TextInputType.number,
              color: AppColors.inputColor,
              focus: passwordFocus,
              onFieldSubmitted: (v) => FocusScope.of(context).requestFocus(confirmPasswordFocus),
            ),
        25.h,
         InputWidget(
          isObsecure: true,
          hintText: AppTexts.confirmPassword,
          keyboardType: TextInputType.number,
          color: AppColors.inputColor,
          focus: confirmPasswordFocus,
        )
      ],
    );
  }
}
