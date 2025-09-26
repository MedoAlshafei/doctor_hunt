import 'package:doctor_hunt/core/constants/app_colors.dart';
import 'package:doctor_hunt/core/constants/app_image.dart';
import 'package:doctor_hunt/core/constants/app_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView.builder(
          itemBuilder: (context, index) => CustomPageViewBuilder(
            image: AppImage.onBoardingImageOne,
            title: AppText.onBoardingOnetitle,
            bodyContent: AppText.onBoardingBodycontent,
            onTap: () {},
          ),
        ),
      ),
    );
  }
}

class CustomPageViewBuilder extends StatefulWidget {
  const CustomPageViewBuilder({
    super.key,
    required this.image,
    required this.title,
    required this.bodyContent,
    this.onTap,
  });
  static String id = "CustomPageViewBuilder";
  final String image;
  final String title;
  final String bodyContent;
  final void Function()? onTap;

  @override
  State<CustomPageViewBuilder> createState() => _CustomPageViewBuilderState();
}

class _CustomPageViewBuilderState extends State<CustomPageViewBuilder> {
  PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImage.appBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                children: [
                  Column(
                    children: [
                      Image.asset(widget.image, fit: BoxFit.fill),
                      Spacer(),
                      Text(
                        widget.title,
                        style: GoogleFonts.rubik(
                          color: AppColors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 46),
                        child: Text(
                          widget.bodyContent,
                          style: GoogleFonts.rubik(
                            color: AppColors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: widget.onTap,
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: Size(295, 54),
                    ),
                    child: Text(AppText.onBoardingButtonGetStarted),
                  ),
                  SizedBox(height: 8),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all(AppColors.grey),
                    ),
                    child: Text("Skip"),
                  ),
                  // Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
