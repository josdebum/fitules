
import "package:fitules/core/constants/color_constants.dart";
import "package:flutter/material.dart";

import "package:google_fonts/google_fonts.dart";

import "app_style.dart";

// Theme Configuration
class AppTheme {
  static ThemeData lightTheme() {
    final ThemeData base = ThemeData.light();
    final fontFamily = GoogleFonts.poppins().fontFamily;
   // The background color for major parts of the app (toolbars, tab bars, etc)
    const Color primaryColor = backgroundColor;
    const Color secondaryColor = kBlack;
    final ColorScheme colorScheme =  const ColorScheme.light().copyWith(
        shadow: Colors.transparent,
        primary: kPrimary,
        secondary: primaryColor,
        inversePrimary: secondaryColor);
    return base.copyWith(
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      canvasColor: primaryColor,
      backgroundColor: primaryColor,
      scaffoldBackgroundColor: primaryColor,
      dividerColor: kGrey4,
      cardColor: kWhite,
      textTheme: _textTheme(base.textTheme, secondaryColor),


      appBarTheme: AppBarTheme(
        elevation: 0,
        color: primaryColor,
        iconTheme:  const IconThemeData(color: secondaryColor),
        titleTextStyle: AppStyle.subtitle.copyWith(
          fontFamily: fontFamily,
          color: secondaryColor,
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  static ThemeData darkTheme() {
    final ThemeData base = ThemeData.dark();
    final fontFamily = GoogleFonts.workSans().fontFamily;
    const Color primaryColor = kPrimaryDark;
    const Color secondaryColor = kWhite;
    final ColorScheme colorScheme = const ColorScheme.dark().copyWith(
        shadow: secondaryColor,
        primary: kPrimary,
        secondary: primaryColor,
        inversePrimary: secondaryColor);
    return base.copyWith(
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      canvasColor: primaryColor,
      backgroundColor: primaryColor,
      scaffoldBackgroundColor: primaryColor,
      dividerColor: kGrey5,
      cardColor: kBlack,
      textTheme: _textTheme(base.textTheme, secondaryColor),

      appBarTheme: AppBarTheme(
        elevation: 0,
        color: primaryColor,
        iconTheme: const IconThemeData(color: secondaryColor),
        titleTextStyle: AppStyle.subtitle.copyWith(
            fontFamily: fontFamily,
            color: secondaryColor,
            fontSize: 15,
            fontWeight: FontWeight.w600),
      ),
    );
  }

  static TextTheme _textTheme(TextTheme base, Color color) {
    final fontFamily = GoogleFonts.workSans().fontFamily;
    return base.copyWith(
      displayLarge: AppStyle.title.copyWith(
        fontFamily: fontFamily,
        color: color,
      ),
      titleLarge:AppStyle.style1.copyWith(fontFamily: fontFamily, color: color),
      titleMedium:AppStyle.style2.copyWith(fontFamily: fontFamily, color: color),
      displayMedium:
          AppStyle.header2.copyWith(fontFamily: fontFamily, color: color),
      displaySmall:
          AppStyle.header3.copyWith(fontFamily: fontFamily, color: color),
      headlineMedium:
          base.headlineMedium?.copyWith(fontFamily: fontFamily, color: color),
      headlineSmall:
          base.headlineSmall?.copyWith(fontFamily: fontFamily, color: color),

      labelLarge:
          AppStyle.buttonText.copyWith(fontFamily: fontFamily, color: color),
      bodySmall: base.bodySmall?.copyWith(fontFamily: fontFamily, color: color),
      bodyLarge: base.bodyLarge?.copyWith(fontFamily: fontFamily, color: color),
      bodyMedium:
          base.bodyMedium?.copyWith(fontFamily: fontFamily, color: color),

      titleSmall:
          base.titleSmall?.copyWith(fontFamily: fontFamily, color: color),
      labelSmall:
          base.labelSmall?.copyWith(fontFamily: fontFamily, color: color),
    );
  }
}
