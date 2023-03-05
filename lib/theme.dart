import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:joke_app/constants/colors.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.indigo,
  ),
  scaffoldBackgroundColor: JokeAppColors.jokeAppPinkBackground,
  textTheme: GoogleFonts.robotoTextTheme(),
  cardTheme: const CardTheme(
    color: JokeAppColors.white,
  ),
);
