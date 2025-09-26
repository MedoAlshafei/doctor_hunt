import 'package:doctor_hunt/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.hintText,
  });

  final IconData prefixIcon;
  final IconData suffixIcon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(10),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        onTapUpOutside: (event) => FocusScope.of(context).unfocus(),
        decoration: InputDecoration(
          fillColor: Colors.white,
          isDense: true,
          hintText: hintText,
          prefixIcon: Icon(prefixIcon, color: AppColors.grey),
          suffixIcon: Icon(suffixIcon, color: AppColors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 18.0,
            horizontal: 16.0,
          ),
        ),
      ),
    );
  }
}
