import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData lightTheme() {
    return ThemeData(
        primaryColor: const Color(0xffFF00FF),
        // primaryColorLight: const Color(0xff9BABB8),
        // primaryColorDark: const Color(0xffB83B5E),
        // disabledColor: const Color(0xff888888),
        // highlightColor: const Color(0xffF9ED69),
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Colors.white,
            onPrimary: Color(0xff9BABB8),
            secondary: Color(0xffB83B5E),
            onSecondary: Color(0xffB83B6F),
            error: Color(0xffB83B5E),
            onError: Color(0xffB83B5E),
            background: Color(0xff1a1817),
            onBackground: Color(0xffE1D4BB),
            surface: Color(0xffF5F0BB),
            onSurface: Color(0xffDBDFAA)),
        textTheme: TextTheme(
            titleLarge: GoogleFonts.josefinSans(
                fontWeight: FontWeight.w600, color: Colors.black),
            titleMedium: GoogleFonts.josefinSans(
                fontWeight: FontWeight.w800, fontSize: 18, color: Colors.black),
            titleSmall: GoogleFonts.josefinSans(
              fontWeight: FontWeight.w800,
              fontSize: 16,
              color: Colors.black,
            ),
            headlineSmall: GoogleFonts.josefinSans(
                fontWeight: FontWeight.w600, color: Colors.black),
            headlineMedium: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600, color: Colors.black),
            bodyMedium: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500, color: Colors.black),
            bodyLarge: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600, color: Colors.black),
            bodySmall: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600, color: Colors.black)));
  }
}
