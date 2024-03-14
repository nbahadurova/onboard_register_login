import 'package:flutter/material.dart';
import 'package:login_register/constants/app_colors.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 44,
      decoration: BoxDecoration(
            color: AppColors.iconBackground,
            borderRadius: BorderRadius.circular(10)),
      child:  Icon(icon),
    );
 
  }
}
