import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';

class SplashItem extends StatelessWidget {
  const SplashItem({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: screenHeight * 0.25,
          ),
          Image.asset(Assets.imagesLogoWithName),
          Expanded(child: SizedBox()),
          Column(
            children: [
              SizedBox(
                height: screenHeight * 0.1,
                child: OverflowBox(
                  minHeight: 300,
                  maxHeight: 300,
                  child: Lottie.asset(Assets.animationLoading),
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'Loading..',
                  style: AppStyles.textStyleLight14,
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.25),
        ],
      ),
    );
  }
}
