import 'package:flutter/material.dart';
import 'package:movieapp/common/constants/size_constants.dart';
import 'package:movieapp/common/extensions/size_extensions.dart';
import 'package:movieapp/common/extensions/string_extensions.dart';
import 'package:movieapp/presentation/themes/theme_color.dart';

class Button extends StatelessWidget {
  final String text;
  final Function onPressed;

  const Button({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColor.royalBlue,
            AppColor.violet,
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            Sizes.dimen_20.w,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.dimen_16.w,
      ),
      margin: EdgeInsets.symmetric(
        vertical: Sizes.dimen_12.h,
      ),
      height: Sizes.dimen_24.h,
      child: TextButton(
        onPressed: () => onPressed(),
        child: Text(
          text,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}
