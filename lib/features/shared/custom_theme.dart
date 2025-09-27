import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    fontFamily: GoogleFonts.rubik().fontFamily,
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0EBE7F)),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF0EBE7F),
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.rubik(
        fontSize: 32,
        fontWeight: FontWeight.w700,
      ),
      headlineMedium: GoogleFonts.rubik(
        fontSize: 28,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: GoogleFonts.rubik(fontSize: 22, fontWeight: FontWeight.w600),
      titleMedium: GoogleFonts.rubik(fontSize: 18, fontWeight: FontWeight.w600),
      bodyLarge: GoogleFonts.rubik(fontSize: 16, fontWeight: FontWeight.w500),
      bodyMedium: GoogleFonts.rubik(fontSize: 14, fontWeight: FontWeight.w400),
      labelLarge: GoogleFonts.rubik(fontSize: 14, fontWeight: FontWeight.w600),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(
        vertical: 18.0,
        horizontal: 16.0,
      ),
      filled: true,
      fillColor: const Color(0xFFEFF7F4),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        // borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFDFE2E6)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF0EBE7F), width: 1.6),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF0EBE7F),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
      ),
    ),
    chipTheme: const ChipThemeData(
      color: WidgetStatePropertyAll(Color(0xFFEFF7F4)),
      labelStyle: TextStyle(
        color: Color(0xFF0EBE7F),
        fontWeight: FontWeight.w600,
      ),
      side: BorderSide.none,
      shape: StadiumBorder(),
    ),
    dividerTheme: const DividerThemeData(color: Color(0xFFDFE2E6)),
  );

  // Dark Theme

  // static ThemeData darkTheme = ThemeData(
  //   brightness: Brightness.dark,
  //   useMaterial3: true,
  //   fontFamily: GoogleFonts.rubik().fontFamily,
  //   colorScheme: ColorScheme.fromSeed(
  //     seedColor: const Color(0xFF0EBE7F),
  //     brightness: Brightness.dark,
  //   ),
  //   scaffoldBackgroundColor: const Color(0xFF0E0F12),
  //   appBarTheme: const AppBarTheme(
  //     backgroundColor: Color(0xFF0E0F12),
  //     foregroundColor: Colors.white,
  //     elevation: 0,
  //     centerTitle: true,
  //   ),
  //   textTheme: const TextTheme(
  //     headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
  //     headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
  //     titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
  //     titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
  //     bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
  //     bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
  //     labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
  //   ),
  //   inputDecorationTheme: InputDecorationTheme(
  //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
  //     enabledBorder: OutlineInputBorder(
  //       borderRadius: BorderRadius.circular(12),
  //       borderSide: const BorderSide(color: Color(0xFF2A2D33)),
  //     ),
  //     focusedBorder: OutlineInputBorder(
  //       borderRadius: BorderRadius.circular(12),
  //       borderSide: const BorderSide(color: Color(0xFF0EBE7F), width: 1.6),
  //     ),
  //   ),
  //   elevatedButtonTheme: ElevatedButtonThemeData(
  //     style: ElevatedButton.styleFrom(
  //       backgroundColor: const Color(0xFF0EBE7F),
  //       foregroundColor: Colors.white,
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  //       textStyle: const TextStyle(fontWeight: FontWeight.w600),
  //     ),
  //   ),
  //   chipTheme: const ChipThemeData(
  //     color: WidgetStatePropertyAll(Color(0xFF173B30)),
  //     labelStyle: TextStyle(
  //       color: Color(0xFF6FE3BF),
  //       fontWeight: FontWeight.w600,
  //     ),
  //     side: BorderSide.none,
  //     shape: StadiumBorder(),
  //   ),
  //   dividerTheme: const DividerThemeData(color: Color(0xFF2A2D33)),
  // );
}
