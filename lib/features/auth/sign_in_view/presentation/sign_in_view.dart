import 'package:doctor_hunt/core/constants/app_colors.dart';
import 'package:doctor_hunt/core/constants/app_image.dart';
import 'package:doctor_hunt/core/routes/app_router.dart';
import 'package:doctor_hunt/features/auth/shared/login_text_filed.dart';
import 'package:doctor_hunt/features/shared/custom_elevated_button.dart';
import 'package:doctor_hunt/features/shared/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final height = size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImage.appBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: height / 7),
                  Text(
                    "Welcome back",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rubik(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    "You can search c ourse, apply course and find scholarship for abroad studies",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rubik(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: height / 15),
                  Row(
                    children: [
                      Expanded(
                        child: loginAuthButtonBuilder(
                          "assets/aouth_icon/google_icon.png",
                          "Google",
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: loginAuthButtonBuilder(
                          "assets/aouth_icon/facebook_icon.png",
                          "Facebook",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height / 20),
                  LoginTextFiled(
                    hintText: "Enter your email",
                    suffixIcon: Icons.email,
                    isView: true,
                    isSuffix: true,
                    keyboardtype: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 20),
                  LoginTextFiled(
                    hintText: "Enter your password",
                    suffixIcon: Icons.visibility_off,
                    isView: true,
                    isSuffix: true,
                    keyboardtype: TextInputType.visiblePassword,
                  ),
                  SizedBox(height: height / 20),
                  CustomElevatedButtom(
                    text: "Login",
                    width: 300,
                    height: 55,
                    onPressed: () {
                      // Navigate to home after successful login using GoRouter
                      GoRouter.of(context).go(AppRouter.kHomeView);
                    },
                  ),
                  SizedBox(height: height * 0.03),
                  CustomTextButtom(
                    text: "Forgot password",
                    color: AppColors.primary,
                    onPressed: () {
                      GoRouter.of(context).go(AppRouter.kSignUpView);
                    },
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.2),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: CustomTextButtom(
                      text: "Don’t have an account? Join us",
                      onPressed: () {
                        GoRouter.of(context).go(AppRouter.kSignUpView);
                      },
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget loginAuthButtonBuilder(String image, String text) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(60),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          SizedBox(width: 10),
          Text(
            text,
            style: GoogleFonts.rubik(fontWeight: FontWeight.w300, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
