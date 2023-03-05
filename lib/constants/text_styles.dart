import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

///
/// This is a class where all text styles are stored
/// You can then reference them in code with `MyTextStyles.someTextStyle`
///

class JokeAppTextStyles {
  static final title = GoogleFonts.roboto(
    color: JokeAppColors.black,
    fontSize: 24,
    fontWeight: FontWeight.w500,
    height: 1.6,
  );
  static final subtitle = GoogleFonts.roboto(
    color: JokeAppColors.black,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1.6,
  );
  static final body = GoogleFonts.roboto(
    color: JokeAppColors.black,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1.6,
  );
  static final bodySmall = GoogleFonts.roboto(
    color: JokeAppColors.black,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.6,
  );

  static final error = GoogleFonts.roboto(
    color: JokeAppColors.jokeAppPinkDark,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    height: 1.6,
  );

  static final button = GoogleFonts.roboto(
    color: JokeAppColors.white,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    height: 1.6,
  );
}
