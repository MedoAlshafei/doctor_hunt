import 'package:doctor_hunt/core/constants/app_image.dart';
import 'package:doctor_hunt/core/constants/app_text.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String bodyContent;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.bodyContent,
  });
}

List<OnboardingModel> onBoardingList = [
  OnboardingModel(
    image: AppImage.onBoardingImageOne,
    title: AppText.onBoardingOnetitle,
    bodyContent: AppText.onBoardingBodycontent,
  ),
  OnboardingModel(
    image: AppImage.onBoardingImageTwo,
    title: AppText.onBoardingTwotitle,
    bodyContent: AppText.onBoardingBodycontent,
  ),
  OnboardingModel(
    image: AppImage.onBoardingImageThree,
    title: AppText.onBoardingThreetitle,
    bodyContent: AppText.onBoardingBodycontent,
  ),
];
