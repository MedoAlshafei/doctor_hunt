import 'package:doctor_hunt/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPageViewBuilder extends StatelessWidget {
  const CustomPageViewBuilder({
    super.key,
    required this.image,
    required this.title,
    required this.bodyContent,
  });

  static String id = "CustomPageViewBuilder";
  final String image;
  final String title;
  final String bodyContent;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, fit: BoxFit.fill),
        const Spacer(),
        Text(
          title,
          style: GoogleFonts.rubik(
            color: AppColors.black,
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 46),
          child: Text(
            bodyContent,
            style: GoogleFonts.rubik(
              color: AppColors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
