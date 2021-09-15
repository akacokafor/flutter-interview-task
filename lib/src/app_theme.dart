import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParkwayColors {
  static const Color parkwayPrimary = Color(0xFFFB724C);

  static const Color white50 = Color(0xFFFCFCFC);

  static const Color black800 = Color(0xFF121212);
  static const Color black900 = Color(0xFF000000);

  static const Color blue50 = Color(0xFFEEF0F2);
  static const Color blue100 = Color(0xFFD2DBE0);
  static const Color blue200 = Color(0xFFADBBC4);
  static const Color blue300 = Color(0xFF8CA2AE);
  static const Color blue600 = Color(0xFF4A6572);
  static const Color blue700 = Color(0xFF344955);
  static const Color blue800 = Color(0xFF232F34);

  static const Color orange300 = Color(0xFFFBD790);
  static const Color orange400 = Color(0xFFF9BE64);
  static const Color orange500 = Color(0xFFF9AA33);

  static const Color red200 = Color(0xFFCF7779);
  static const Color red400 = Color(0xFFFF4C5D);

  static const Color white50Alpha060 = Color(0x99FFFFFF);

  static const Color blue50Alpha060 = Color(0x99EEF0F2);

  static const Color black900Alpha020 = Color(0x33000000);
  static const Color black900Alpha087 = Color(0xDE000000);
  static const Color black900Alpha060 = Color(0x99000000);

  static const Color greyLabel = Color(0xFFB0B0B0);
  static const Color captionColor = Color(0xFFA1A1A1);
  static const Color darkBottomAppBarBackground = Color(0xFF2D2D2D);
  static const Color darkDrawerBackground = Color(0xFF353535);
  static const Color darkCardBackground = Color(0xFF1E1E1E);
  static const Color darkChipBackground = Color(0xFF2A2A2A);
  static const Color lightChipBackground = Color(0xFFE5E5E5);
}

ThemeData buildParkwayLightTheme(BuildContext context) {
  final base = ThemeData.light();
  return base.copyWith(
    bottomAppBarColor: ParkwayColors.blue700,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: ParkwayColors.blue700,
      modalBackgroundColor: Colors.white.withOpacity(0.7),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: ParkwayColors.white50,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    cardColor: ParkwayColors.white50,
    chipTheme: _buildChipTheme(
      ParkwayColors.blue700,
      ParkwayColors.lightChipBackground,
      Brightness.light,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: const Color(0xFFF0F0F0),
      filled: true,
      hintStyle: const TextStyle(color: Color(0xFFA1A1A1)),
      isDense: true,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    dividerColor: ParkwayColors.captionColor,
    colorScheme: const ColorScheme.light(
      primary: ParkwayColors.parkwayPrimary,
      primaryVariant: ParkwayColors.blue800,
      secondary: ParkwayColors.orange500,
      secondaryVariant: ParkwayColors.orange400,
      surface: ParkwayColors.white50,
      error: ParkwayColors.red400,
      onPrimary: ParkwayColors.white50,
      onSecondary: ParkwayColors.black900,
      onBackground: ParkwayColors.black900,
      onSurface: ParkwayColors.black900,
      onError: ParkwayColors.black900,
      background: ParkwayColors.blue50,
    ),
    textTheme: _buildParkwayLightTextTheme(base.textTheme),
    scaffoldBackgroundColor: ParkwayColors.white50,
  );
}

ThemeData buildParkwayDarkTheme(BuildContext context) {
  final base = ThemeData.dark();
  return base.copyWith(
    bottomAppBarColor: ParkwayColors.darkBottomAppBarBackground,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: ParkwayColors.darkDrawerBackground,
      modalBackgroundColor: Colors.black.withOpacity(0.7),
    ),
    cardColor: ParkwayColors.darkCardBackground,
    chipTheme: _buildChipTheme(
      ParkwayColors.blue200,
      ParkwayColors.darkChipBackground,
      Brightness.dark,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: const Color(0xFFF0F0F0),
      filled: true,
      hintStyle: const TextStyle(color: Color(0xFFA1A1A1)),
      isDense: true,
      isCollapsed: true,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    colorScheme: const ColorScheme.dark(
      primary: ParkwayColors.parkwayPrimary,
      primaryVariant: ParkwayColors.blue300,
      secondary: ParkwayColors.orange300,
      secondaryVariant: ParkwayColors.orange300,
      surface: ParkwayColors.black800,
      error: ParkwayColors.red200,
      onPrimary: ParkwayColors.black900,
      onSecondary: ParkwayColors.black900,
      onBackground: ParkwayColors.white50,
      onSurface: ParkwayColors.white50,
      onError: ParkwayColors.black900,
      background: ParkwayColors.black900,
    ),
    textTheme: _buildParkwayDarkTextTheme(base.textTheme),
    scaffoldBackgroundColor: ParkwayColors.black900,
  );
}

ChipThemeData _buildChipTheme(
  Color primaryColor,
  Color chipBackground,
  Brightness brightness,
) {
  return ChipThemeData(
    backgroundColor: primaryColor.withOpacity(0.12),
    disabledColor: primaryColor.withOpacity(0.87),
    selectedColor: primaryColor.withOpacity(0.05),
    secondarySelectedColor: chipBackground,
    padding: const EdgeInsets.all(4),
    shape: const StadiumBorder(),
    labelStyle: GoogleFonts.poppinsTextTheme().bodyText2!.copyWith(
          color: brightness == Brightness.dark
              ? ParkwayColors.white50
              : ParkwayColors.black900,
        ),
    secondaryLabelStyle: GoogleFonts.poppinsTextTheme().bodyText2!,
    brightness: brightness,
  );
}

TextTheme _buildParkwayLightTextTheme(TextTheme base) {
  return base.copyWith(
    headline4: GoogleFonts.poppins(
      fontWeight: FontWeight.w700,
      fontSize: 34,
      letterSpacing: 0.4,
      height: 0.9,
      color: ParkwayColors.black900,
    ),
    headline5: GoogleFonts.poppins(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      letterSpacing: 0.27,
      color: ParkwayColors.black900,
    ),
    headline6: GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      fontSize: 20,
      letterSpacing: 0.18,
      color: ParkwayColors.black900,
    ),
    subtitle1: GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      letterSpacing: -0.02,
      color: ParkwayColors.black900,
    ),
    subtitle2: GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      letterSpacing: -0.04,
      color: ParkwayColors.black900,
    ),
    bodyText1: GoogleFonts.poppins(
      fontWeight: FontWeight.normal,
      fontSize: 18,
      letterSpacing: 0.2,
      color: ParkwayColors.black900,
    ),
    bodyText2: GoogleFonts.poppins(
      fontWeight: FontWeight.normal,
      fontSize: 14,
      letterSpacing: -0.05,
      color: ParkwayColors.black900,
    ),
    caption: GoogleFonts.poppins(
      fontWeight: FontWeight.normal,
      fontSize: 12,
      letterSpacing: -0.2,
      color: ParkwayColors.captionColor,
    ),
  );
}

TextTheme _buildParkwayDarkTextTheme(TextTheme base) {
  return base.copyWith(
    headline4: GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      fontSize: 34,
      letterSpacing: 0.4,
      height: 0.9,
      color: ParkwayColors.white50,
    ),
    headline5: GoogleFonts.poppins(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      letterSpacing: 0.27,
      color: ParkwayColors.white50,
    ),
    headline6: GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      fontSize: 20,
      letterSpacing: 0.18,
      color: ParkwayColors.white50,
    ),
    subtitle1: GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      letterSpacing: -0.02,
      color: ParkwayColors.white50,
    ),
    subtitle2: GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      letterSpacing: -0.04,
      color: ParkwayColors.white50,
    ),
    bodyText1: GoogleFonts.poppins(
      fontWeight: FontWeight.normal,
      fontSize: 18,
      letterSpacing: 0.2,
      color: ParkwayColors.white50,
    ),
    bodyText2: GoogleFonts.poppins(
      fontWeight: FontWeight.normal,
      fontSize: 14,
      letterSpacing: -0.05,
      color: ParkwayColors.white50,
    ),
    caption: GoogleFonts.poppins(
      fontWeight: FontWeight.normal,
      fontSize: 12,
      letterSpacing: 0.2,
      color: ParkwayColors.white50,
    ),
  );
}
