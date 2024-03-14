import 'package:flutter/material.dart';
import 'package:login_register/constants/app_texts.dart';
import 'package:login_register/constants/app_colors.dart';
import 'package:login_register/extensions/num_extensions.dart';
import 'package:login_register/ui/pages/widgets/input_widget.dart';

class InputsWidget extends StatefulWidget {

  const InputsWidget({ super.key });

  @override
  State<InputsWidget> createState() => _InputsWidgetState();
}

class _InputsWidgetState extends State<InputsWidget> {
  late final FocusNode emailFocus = FocusNode();
  late final FocusNode passwordFocus = FocusNode();
  late final formkey = GlobalKey<FormState>();

   @override
   Widget build(BuildContext context) {
       return Form(
        key: formkey,
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               InputWidget(
                hintText: AppTexts.email,
                keyboardType: TextInputType.emailAddress,
                color: AppColors.blue,
                focus: emailFocus,
                onFieldSubmitted: (v) => FocusScope.of(context).requestFocus(passwordFocus),
                validator: (v) {
                  setState(() {
                    
                  });
                  if (v==null || v.isEmpty || !v.contains('@')) {
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
              )
            ],
          ),
       );
  }
}