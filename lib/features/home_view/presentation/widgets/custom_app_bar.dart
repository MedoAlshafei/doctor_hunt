import 'package:doctor_hunt/core/constants/app_colors.dart';
import 'package:doctor_hunt/core/constants/app_image.dart';
import 'package:doctor_hunt/core/constants/app_text.dart';
import 'package:doctor_hunt/features/shared/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      expandedHeight: 130,
      collapsedHeight: 125,
      pinned: false,
      floating: true,
      snap: true,
      flexibleSpace: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          FlexibleSpaceBar(
            background: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [AppColors.primary, AppColors.secondary],
                ),
              ),
            ),
          ),
          Positioned(
            top: 135,
            left: 16,
            right: 16,
            child: CustomTextField(
              hintText: AppText.search,
              prefixIcon: Icons.search,
              suffixIcon: Icons.filter_list,
            ),
          ),
        ],
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0)),
      ),
      title: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppText.home,
              style: GoogleFonts.rubik(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              AppText.findYourDoctor,
              style: GoogleFonts.rubik(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: Image.asset(AppImage.profileImage, fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
