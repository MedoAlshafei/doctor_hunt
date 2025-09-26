import 'package:doctor_hunt/core/constants/app_image.dart';
import 'package:doctor_hunt/core/constants/app_text.dart';
import 'package:doctor_hunt/features/home/presentation/home_view.dart';
import 'package:doctor_hunt/features/onboarding/model/custom_page_view_builder.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
              child: PageView.builder(
                controller: _pageController,
                itemCount: 3,
                itemBuilder: (context, index) {
                  switch (index) {
                    case 0:
                      return CustomPageViewBuilder(
                        image: AppImage.onBoardingImageOne,
                        title: AppText.onBoardingOnetitle,
                        bodyContent: AppText.onBoardingBodycontent,
                      );
                    case 1:
                      return CustomPageViewBuilder(
                        image: AppImage.onBoardingImageTwo,
                        title: AppText.onBoardingTwotitle,
                        bodyContent: AppText.onBoardingBodycontent,
                      );
                    case 2:
                      return CustomPageViewBuilder(
                        image: AppImage.onBoardingImageThree,
                        title: AppText.onBoardingThreetitle,
                        bodyContent: AppText.onBoardingBodycontent,
                      );
                    default:
                      return const SizedBox.shrink();
                  }
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
                      switch (_pageController.page) {
                        case 0:
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        case 1:
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        case 2:
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (e) => HomeView()),
                            (route) => false,
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
                      if (_pageController.hasClients) {
                        _pageController.animateToPage(
                          2,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.ease,
                        );
                      }
                    },
                    child: const Text("Skip"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
