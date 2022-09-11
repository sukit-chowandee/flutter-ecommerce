// Styling inspire from https://github.com/flutter/gallery/blob/master/lib/themes/gallery_theme_data.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const _medium = FontWeight.w500;
  static const _semiBold = FontWeight.w600;

  static const _highlightColor = Color.fromARGB(255, 180, 88, 27);
  static const _primaryColor = Color.fromARGB(255, 223, 134, 66);
  static const _textColor = Color.fromARGB(255, 0, 0, 0);
  static final _subtitle1 = GoogleFonts.k2d(
    fontWeight: _medium,
    color: _textColor,
    fontSize: 12.0,
  );
  static const double _tabbarIconSize = 25;
  static const List<Color> gradientGreenColor = [
    Color(0xFF8DD3C8),
    Color(0xFF5CA496),
  ];
  static final TextTheme _textTheme = TextTheme(
    headline1: GoogleFonts.k2d(
      fontWeight: _semiBold,
      color: _primaryColor,
      fontSize: 30.0,
    ),
    headline2: GoogleFonts.k2d(
      fontWeight: _semiBold,
      color: _primaryColor,
      fontSize: 28.0,
    ),
    headline3: GoogleFonts.k2d(
      fontWeight: _medium,
      color: _textColor,
      fontSize: 22.0,
      shadows: [
        const Shadow(
          color: Colors.black,
          offset: Offset(0, 0.25),
          blurRadius: 1,
        ),
      ],
    ),
    headline4: GoogleFonts.k2d(
      fontWeight: _medium,
      color: _primaryColor,
      fontSize: 20.0,
    ),
    headline5: GoogleFonts.k2d(
      fontWeight: _medium,
      color: _textColor,
      fontSize: 18.0,
    ),
    headline6: GoogleFonts.k2d(
      fontWeight: _medium,
      fontSize: 16.0,
      color: _primaryColor,
    ),
    bodyText1: GoogleFonts.k2d(
      fontSize: 14.0,
      color: _textColor,
    ),
    bodyText2: GoogleFonts.k2d(
      fontSize: 16.0,
      color: Colors.grey,
    ),
    caption: GoogleFonts.k2d(
      fontWeight: _semiBold,
      color: _textColor,
      fontSize: 16.0,
    ),
    subtitle1: _subtitle1,
    subtitle2: GoogleFonts.k2d(
      fontWeight: _medium,
      fontSize: 12.0,
      color: _textColor,
    ),
    overline: GoogleFonts.k2d(
      fontWeight: _medium,
      color: _textColor,
      fontSize: 12.0,
    ),
    button: GoogleFonts.k2d(
      fontWeight: FontWeight.w500,
      fontSize: 14.0,
      color: _textColor,
    ),
  );

  static ThemeData get themeData => ThemeData(
        backgroundColor: const Color(0xFFD0EDE9),
        canvasColor: const Color(0xFFFAFAFA),
        bottomNavigationBarTheme: _bottomNavigationBarTheme,
        disabledColor: const Color(0xFFAAAAAA),
        dividerColor: const Color(0xFFEEEEEE),
        highlightColor: const Color.fromARGB(255, 180, 88, 27),
        hintColor: const Color(0xFF999999),
        primaryColor: _primaryColor,
        scaffoldBackgroundColor: const Color(0xFFF3F3F4),
        shadowColor: const Color(0x40000000),
        unselectedWidgetColor: const Color(0xFF666666),
        appBarTheme: _appBarTheme,
        textTheme: _textTheme,
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(_highlightColor),
        ),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.all(_primaryColor),
        ),
      );

  static AppBarTheme get _appBarTheme => AppBarTheme(
        iconTheme: const IconThemeData(
          color: _primaryColor,
        ),
        titleTextStyle: _textTheme.headline6,
        color: Colors.white,
        elevation: 1,
        centerTitle: true,
      );

  static BottomNavigationBarThemeData get _bottomNavigationBarTheme =>
      BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        unselectedLabelStyle: _subtitle1,
        selectedLabelStyle: _subtitle1,
        selectedItemColor: _highlightColor,
        selectedIconTheme: const IconThemeData(
          color: _highlightColor,
          size: _tabbarIconSize,
        ),
        unselectedIconTheme: const IconThemeData(
          size: _tabbarIconSize,
        ),
      );
}
