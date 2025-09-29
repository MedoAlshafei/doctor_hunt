import 'package:doctor_hunt/core/constants/app_image.dart';
import 'package:doctor_hunt/core/routes/app_router.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _navigateToOnboarding();
  }

  Future<void> _navigateToOnboarding() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      Navigator.pushReplacementNamed(context, AppRouter.kOnboardingView);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(AppImage.splashViewImage, fit: BoxFit.fill),
      ),
    );
  }
}
