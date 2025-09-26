import 'package:doctor_hunt/splash_view.dart';
import 'package:flutter/material.dart';
import 'features/shared/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor Hunt',
      theme: CustomTheme.lightTheme,
      // darkTheme: CustomTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const SplashView(),
    );
  }
}
