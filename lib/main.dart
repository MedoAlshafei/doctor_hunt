import 'package:doctor_hunt/core/routes/route_generation_config.dart';
import 'package:doctor_hunt/features/shared/custom_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Doctor Hunt',
      themeMode: ThemeMode.system,
      theme: CustomTheme.lightTheme,
      routerConfig: RouteGeneratorConfig.goRouter,
    );
  }
}
