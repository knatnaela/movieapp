import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/common/constants/size_constants.dart';

import 'package:movieapp/common/extensions/size_extensions.dart';
import 'package:movieapp/presentation/themes/theme_color.dart';

class ThemeText {
  const ThemeText._();

  static TextTheme get _popinsTextTheme => GoogleFonts.poppinsTextTheme();

  static TextStyle get _whiteHeadLine6 => _popinsTextTheme.headline6!.copyWith(
        fontSize: Sizes.dimen_20.sp,
        color: Colors.white,
      );

  static TextStyle get _whiteHeadLine5 => _popinsTextTheme.headline5!.copyWith(
        fontSize: Sizes.dimen_24.sp,
        color: Colors.white,
      );

  static TextStyle get whiteSubtitle1 => _popinsTextTheme.subtitle1!.copyWith(
        fontSize: Sizes.dimen_16.sp,
        color: Colors.white,
      );
  static TextStyle get _whiteButton => _popinsTextTheme.button!.copyWith(
        fontSize: Sizes.dimen_14.sp,
        color: Colors.white,
      );
  static TextStyle get whiteBodyText2 => _popinsTextTheme.bodyText2!.copyWith(
        fontSize: Sizes.dimen_14.sp,
        color: Colors.white,
        wordSpacing: 0.25,
        letterSpacing: 0.25,
        height: 1.5,
      );

  static getTextTheme() => TextTheme(
        headline5: _whiteHeadLine5,
        headline6: _whiteHeadLine6,
        subtitle1: whiteSubtitle1,
        bodyText2: whiteBodyText2,
        button: _whiteButton,
      );
}

extension TextThemeExtension on TextTheme {
  TextStyle get royalBlueSubtitle1 => subtitle1!.copyWith(
        color: AppColor.royalBlue,
        fontWeight: FontWeight.w600,
      );
}
