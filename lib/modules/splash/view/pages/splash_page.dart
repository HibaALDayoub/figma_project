import 'package:figma_proj/core/constant/colors/app_colors.dart';
import 'package:figma_proj/core/constant/size/app_size.dart';

import 'package:flutter/material.dart';

import '../../../widgets/custom_text.dart';
import '../widgets/two_overlapping_circles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
          height: AppSize.screenHeight(context: context) * 0.3,
        ),
        Center(
          child: TwoOverlappingCircles(
            left: 60,
            heightContainer: AppSize.screenHeight(context: context) * 0.2,
            widthContainer: AppSize.screenWidth(context: context) * 0.4,
            heightCircle: 95,
            widthCircle: 95,
          ),
        ),
        const CustomText(
          text: "Transfer Me",
          color: AppColors.primaryColor,
          fontSize: 54,
          fontWeight: FontWeight.w600,
        ),
        const CustomText(
          text: "Your Best Money Transfer Partner.",
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: AppColors.primaryColor,
        ),
        SizedBox(
          height: AppSize.screenHeight(context: context) * 0.29,
        ),
        const CustomText(
          text: "Secured by TransferMe.",
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: AppColors.primaryColor,
        ),
      ]),
    ));
  }
}
