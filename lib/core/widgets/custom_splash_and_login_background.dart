import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets.dart';

class CustomSplashAndLoginBackground extends StatelessWidget {
  const CustomSplashAndLoginBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: SvgPicture.asset(Assets.imagesUpperSplashContainer),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SvgPicture.asset(Assets.imagesLowerSplashContainer),
        ),
        child
      ],
    );
  }
}
