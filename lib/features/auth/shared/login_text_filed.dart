import 'package:doctor_hunt/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class LoginTextFiled extends StatelessWidget {
  const LoginTextFiled({
    super.key,
    required this.hintText,
    required this.suffixIcon,
    this.isView = false,
    this.isSuffix = false,
    required this.keyboardtype,
  });
  final String hintText;
  final IconData suffixIcon;
  final bool isView;
  final bool isSuffix;
  final TextInputType keyboardtype;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: AppColors.grey.withValues(alpha: 0.6)),
      keyboardType: keyboardtype,
      enableIMEPersonalizedLearning: isView,
      onTapUpOutside: (event) => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          color: AppColors.grey.withValues(alpha: 0.6),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppColors.grey.withValues(alpha: 0.4),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppColors.grey.withValues(alpha: 0.4),
            width: 1,
          ),
        ),
        suffixIcon: isSuffix
            ? IconButton(
                onPressed: () {},
                icon: Icon(
                  suffixIcon,
                  color: AppColors.grey.withValues(alpha: 0.6),
                ),
              )
            : null,
      ),
    );
  }
}
