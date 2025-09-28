import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextButtom extends StatelessWidget {
  const CustomTextButtom({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
  });
  final String text;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text, style: GoogleFonts.rubik(color: color)),
    );
  }
}
