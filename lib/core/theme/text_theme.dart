import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(

    headlineLarge: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 10,
      fontWeight: FontWeight.w700,
    ),

    titleLarge: GoogleFonts.poppins(
      fontSize: 10,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 9,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 8,
      fontWeight: FontWeight.w600,
    ),

    bodyLarge: GoogleFonts.poppins(
      fontSize: 10,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 8,
    ),
    // bodySmall: GoogleFonts.poppins(
    //   fontSize: 12,
    // ),

    labelLarge: GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
    labelMedium: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: GoogleFonts.poppins(
      fontSize: 10,
      fontWeight: FontWeight.w400,
    ),
  );
}
