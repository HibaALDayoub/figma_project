import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../core/constant/colors/app_colors.dart';
import '../../../widgets/custom_text.dart';
import '../../controller/login_controller.dart';

class TextSignUp extends GetView<LogInController> {
  const TextSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToSignIn();
      },
      child: CustomText(
          text: 'Sign Up',
          textAlign: TextAlign.center,
          color: AppColors.primaryColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500),
    );
  }
}
