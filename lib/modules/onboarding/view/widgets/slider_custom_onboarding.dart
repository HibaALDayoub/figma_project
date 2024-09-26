import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/colors/app_colors.dart';
import '../../../../core/constant/size/app_size.dart';
import '../../../widgets/custom_text.dart';
import '../../controller/onboarding_controller.dart';
import '../../data/static_onboarding.dart';

class SliderCustomOnBoarding extends GetView<OnBoardingController> {
  const SliderCustomOnBoarding({super.key});
// لاتنسي تغيري النص ل custom
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.screenHeight(context: context) * 0.7,
      width: AppSize.screenWidth(context: context),
      child: PageView.builder(
          scrollDirection: Axis.horizontal,
          controller: controller.pageController,
          onPageChanged: (value) {
            controller.onPgeChangDots(value);
          },
          itemCount: onBoardingList.length,
          itemBuilder: (context, i) => Padding(
                padding: const EdgeInsets.all(50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: AppSize.screenHeight(context: context) * 0.4,
                        width: AppSize.screenWidth(context: context) * 0.7,
                        child: Image.asset(onBoardingList[i].image),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: CustomText(
                        text: " ${onBoardingList[i].title}",
                        fontSize: 25,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w400,
                      ),
                      //     Text(
                      //   " ${onBoardingList[i].title}",
                      //   style: const TextStyle(
                      //     fontSize: 25,
                      //     color: AppColors.primaryColor,
                      //     fontWeight: FontWeight.w400,
                      //   ),
                      //   // const TextStyle(fontSize: 20, color: Colors.orange)
                      // ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: CustomText(
                            text: "${onBoardingList[i].subtitle}",
                            color: AppColors.secondaryColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w500)
                        //  Text(
                        //   "${onBoardingList[i].subtitle}",
                        //   textAlign: TextAlign.center,
                        //   style: const TextStyle(
                        //       color: AppColors.secondaryColor,
                        //       fontSize: 13,
                        //       fontWeight: FontWeight.w500),
                        // ),
                        ),
                  ],
                ),
              )),
    );
  }
}
