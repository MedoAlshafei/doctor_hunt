import 'package:doctor_hunt/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.size,
  });
  final String text;
  final Size? size;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: size,
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: AppColors.primary,
      ),
      child: Text(text, style: TextStyle()),
    );
  }
}
