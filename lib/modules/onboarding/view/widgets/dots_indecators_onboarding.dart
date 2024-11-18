import 'package:figma_proj/core/constant/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/onboarding_controller.dart';
import '../../data/static_onboarding.dart';

class DotsIndicatorsOnboarding extends StatelessWidget {
  const DotsIndicatorsOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
              onBoardingList.length,
              (index) => AnimatedContainer(
                    margin: EdgeInsets.only(right: 5.w),
                    duration: const Duration(seconds: 1),
                    width: 7.w,
                    height: 7.h,
                    decoration: BoxDecoration(
                        color: controller.currentPage == index
                            ? AppColors.primaryColor
                            : AppColors.secondaryColor,
                        shape: BoxShape.circle
                        // borderRadius: BorderRadius.circular(10.r)
                        ),
                  ))
        ],
      ),
    );
  }
}
