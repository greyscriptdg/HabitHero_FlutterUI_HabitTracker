import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: const Color(0xFF6200EE),
      secondary: const Color(0xFF03DAC6),
      surface: const Color(0xFFFFFFFF),
      background: const Color(0xFFF5F5F5),
      error: const Color(0xFFB00020),
      onPrimary: const Color(0xFFFFFFFF),
      onSecondary: const Color(0xFF000000),
      onSurface: const Color(0xFF000000),
      onBackground: const Color(0xFF000000),
      onError: const Color(0xFFFFFFFF),
      brightness: Brightness.light,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFF6200EE),
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    cardTheme: CardTheme(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.dark(
      primary: const Color(0xFFBB86FC),
      secondary: const Color(0xFF03DAC6),
      surface: const Color(0xFF121212),
      background: const Color(0xFF000000),
      error: const Color(0xFFCF6679),
      onPrimary: const Color(0xFF000000),
      onSecondary: const Color(0xFF000000),
      onSurface: const Color(0xFFFFFFFF),
      onBackground: const Color(0xFFFFFFFF),
      onError: const Color(0xFF000000),
      brightness: Brightness.dark,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFF1E1E1E),
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    cardTheme: CardTheme(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
} 