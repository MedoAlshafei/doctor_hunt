import 'package:doctor_hunt/features/auth/sign_up_view/presentation/sign_up_view.dart';
import 'package:doctor_hunt/features/find_doctor_view/presentation/find_doctor_view.dart';
import 'package:doctor_hunt/features/home_view/presentation/home_view.dart';
import 'package:doctor_hunt/features/live_stream_view/presentation/live_stream_view.dart';
import 'package:doctor_hunt/features/onboarding_view/presentation/onboarding_view.dart';
import 'package:doctor_hunt/features/auth/sign_in_view/presentation/sign_in_view.dart';
import 'package:doctor_hunt/splash_view.dart';
import 'app_router.dart';
import 'package:flutter/material.dart';

class RouteGeneratorConfig {
  static Route<dynamic>? generator(RouteSettings settings) {
    switch (settings.name) {
      case AppRouter.kSplashView:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case AppRouter.kOnboardingView:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case AppRouter.kSignInView:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case AppRouter.kSignUpView:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      case AppRouter.kHomeView:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case AppRouter.kDoctorLiveStreamView:
        return MaterialPageRoute(builder: (_) => const DoctorLiveScreen());
      case AppRouter.kFindDoctorView:
        return MaterialPageRoute(builder: (_) => const FindDoctorsScreen());
      // Add more cases as needed
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(title: Text('No route defined')),
            body: Center(child: Text('No route defined')),
          ),
        );
    }
  }
}
