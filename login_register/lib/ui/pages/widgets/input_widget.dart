import 'package:flutter/material.dart';
import 'package:login_register/constants/app_colors.dart';
import 'package:login_register/constants/app_radiuses.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({
    super.key,
    required this.hintText,
    required this.keyboardType,
    required this.color,
    this.isObsecure = false,
    this.suffix,  
    this.focus,
    this.onFieldSubmitted,
    this.validator
  });
  final String hintText;
  final TextInputType keyboardType;
  final Color color;
  final bool isObsecure;
  final IconData? suffix;
  final FocusNode? focus;
  final void Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
   bool isVisible = false;

  void isVisibility() {
    isVisible = !isVisible;
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      focusNode: widget.focus,
      onFieldSubmitted: widget.onFieldSubmitted,
      obscureText: isVisible ? false : widget.isObsecure,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: widget.color, width: 2),
        ),
        hintText: widget.hintText,
        suffixIcon: widget.isObsecure ? 
        InkWell(
          borderRadius: AppRadiuses.all10,
          onTap: () {
            isVisibility();
          },
          child: Icon(
            isVisible? Icons.visibility
            :Icons.visibility_off
          ),
        ): Icon(widget.suffix),
        fillColor: AppColors.inputColor,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.blue,
          ),
        ),
      ),
      
    );
  }
}
