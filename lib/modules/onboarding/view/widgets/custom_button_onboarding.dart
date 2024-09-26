import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/custom_button.dart';
import '../../controller/onboarding_controller.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingController> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {
        controller.nextBtnPge();
      },
      text: "Continue",
    );
  }
}
