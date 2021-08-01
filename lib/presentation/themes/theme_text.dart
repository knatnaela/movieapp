import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/common/constants/size_constants.dart';

import 'package:movieapp/common/extensions/size_extension.dart';

class ThemeText {
  const ThemeText._();

  static TextTheme get _popinsTextTheme => GoogleFonts.poppinsTextTheme();
  static TextStyle get _whiteHeadLine6 => _popinsTextTheme.headline6!
      .copyWith(fontSize: Sizes.dimen_20.sp, color: Colors.white);
  static getTextTheme() => TextTheme(headline6: _whiteHeadLine6);
}
