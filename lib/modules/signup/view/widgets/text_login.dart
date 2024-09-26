import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/colors/app_colors.dart';
import '../../../widgets/custom_text.dart';
import '../../controller/sign_up_controller.dart';

class TextLogIn extends GetView<SignUpController> {
  TextLogIn({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpController());

    return InkWell(
      onTap: () {
        controller.goToSignIn();
      },
      child: const CustomText(
          text: 'Login',
          textAlign: TextAlign.center,
          color: AppColors.primaryColor,
          fontSize: 14,
          fontWeight: FontWeight.w500),
    );
  }
}
