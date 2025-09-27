
import 'package:doctor_hunt/features/find_doctor_view/presentation/find_doctor_view.dart';
import 'package:doctor_hunt/features/home_view/presentation/home_view.dart';
import 'package:doctor_hunt/features/live_stream_view/presentation/live_stream_view.dart';
import 'package:doctor_hunt/features/onboarding_view/presentation/onboarding_view.dart';
import 'package:doctor_hunt/features/sign_in_view/presentation/sign_in_view.dart';
import 'package:doctor_hunt/features/sign_up_view/presentation/sign_up_view.dart';
import 'package:doctor_hunt/splash_view.dart';
import 'package:go_router/go_router.dart';
import 'app_router.dart';

class RouteGeneratorConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRouter.kSplashView,
    routes: [
      GoRoute(
        path: AppRouter.kSplashView,
        name: AppRouter.kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRouter.kOnboardingView,
        name: AppRouter.kOnboardingView,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: AppRouter.kSignInView,
        name: AppRouter.kSignInView,
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: AppRouter.kSignUpView,
        name: AppRouter.kSignUpView,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: AppRouter.kHomeView,
        name: AppRouter.kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: AppRouter.kDoctorLiveStreamView,
        name: AppRouter.kDoctorLiveStreamView,
        builder: (context, state) => const DoctorLiveScreen(),
      ),
      GoRoute(
        path: AppRouter.kFindDoctorView,
        name: AppRouter.kFindDoctorView,
        builder: (context, state) => const FindDoctorsScreen(),
      ),
    ],
  );
}
