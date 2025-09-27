import 'package:doctor_hunt/core/constants/app_colors.dart';
import 'package:doctor_hunt/core/constants/app_text.dart';
import 'package:doctor_hunt/features/onboarding_view/model/onboarding_model.dart';
import 'package:doctor_hunt/features/onboarding_view/presentation/custom_page_view_builder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: onBoardingList.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return CustomPageViewBuilder(
                  image: onBoardingList[index].image,
                  title: onBoardingList[index].title,
                  bodyContent: onBoardingList[index].bodyContent,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (_currentPage == 2) {
                      context.goNamed('/home');
                    } else {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    minimumSize: const Size(295, 54),
                  ),
                  child: const Text(AppText.onBoardingButtonGetStarted),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {
                    if (_currentPage != 2) {
                      _pageController.animateToPage(
                        2,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeIn,
                      );
                    } else {
                      context.go('/home');
                    }
                  },
                  child: Text(
                    AppText.skip,
                    style: GoogleFonts.rubik(
                      color: AppColors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
