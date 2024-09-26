import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/onboarding_controller.dart';
import '../widgets/custom_button_onboarding.dart';
import '../widgets/dots_indecators_onboarding.dart';
import '../widgets/slider_custom_onboarding.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingController());
    return const Scaffold(
      body: SafeArea(
          top: true,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: SliderCustomOnBoarding(),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      DotsIndicatorsOnboarding(),
                      Spacer(
                        flex: 2,
                      ),
                      CustomButtonOnBoarding()
                    ],
                  ))
            ],
          )),
    );
  }
}
