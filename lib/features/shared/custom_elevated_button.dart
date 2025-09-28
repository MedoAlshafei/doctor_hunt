import 'package:doctor_hunt/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButtom extends StatelessWidget {
  const CustomElevatedButtom({
    super.key,
    required this.text,
    required this.onPressed,
    required this.width,
    required this.height,
  });
  final String text;
  final double width;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        // minimumSize: Size(double.infinity, 50),
        fixedSize: Size(width, height),
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.rubik(fontSize: 18, fontWeight: FontWeight.w500),
      ),
    );
  }
}
