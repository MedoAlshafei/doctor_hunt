import 'package:doctor_hunt/features/shared/custom_theme.dart';
import 'package:doctor_hunt/root.dart';
import 'package:flutter/material.dart';

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
      themeMode: ThemeMode.system,
      // themeMode: ThemeMode.light,
      theme: CustomTheme.lightTheme,
      home: Root(),
    );
  }
}
