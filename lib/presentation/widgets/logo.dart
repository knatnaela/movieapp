import 'package:flutter/material.dart';

import 'package:movieapp/common/extensions/size_extension.dart';

class Logo extends StatelessWidget {
  final double height;

  const Logo({Key? key, required this.height})
      : assert(height > 0, 'height should be grater than 0');

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/pngs/logo.png',
      height: height.h,
    );
  }
}
