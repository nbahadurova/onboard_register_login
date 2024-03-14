import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register/constants/app_colors.dart';
import 'package:login_register/extensions/material_state_property_all_extensions.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({super.key, required this.text, required this.onPressed});
  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: AppColors.blue.mspAll,
          fixedSize: const Size.fromHeight(50).mspAll,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              .mspAll,
        ),
        onPressed: onPressed,
        child: Text(text,
            style: GoogleFonts.poppins(
              fontSize: 20,
              color: AppColors.white,
              fontWeight: FontWeight.w600,
            )),
      ),
    );
  }
}
