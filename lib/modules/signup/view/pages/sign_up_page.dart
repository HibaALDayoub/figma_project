import 'package:figma_proj/core/constant/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/constant/app_routes.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text.dart';
import '../../controller/sign_up_controller.dart';
import '../widgets/auth_overlapping_circles.dart';
import '../widgets/custom_facebook_google_logo.dart';
import '../widgets/custom_form.dart';
import '../widgets/text_login.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final GlobalKey<FormState> formState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Get.put(SignUpController());
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // SizedBox(height: AppSize().context,)
          // اذا بدي ياه يمنع المستخدم انو يبلش اسمو برقم او ينتهي برقم بكتب هيك
          // if(value!.isempty || !regexp(r'[a-z A-Z]+$).hasmatch(value!)){return error name}
          children: [
            const AuthOverLappingCircles(),
            CustomText(
              text: "Sign Up",
              fontWeight: FontWeight.w700,
              fontSize: 40.sp,
            ),
            Form(
                key: formState,
                child: Column(
                  children: [
                    const CustomForm(),
                    CustomButton(
                      height: 60.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 65.w, vertical: 10.h),
                      onPressed: () {
                        Get.toNamed(AppRoutes.profileRoute);
                      },
                      text: "Sign Up",
                      margin: EdgeInsets.only(top: 40.h),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Text(
                      "____________  or  ____________",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey),
                    ),
                    const CustomFaceBookGoogle(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: 'Already have an account? ',
                          color: AppColors.grey,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                        ),
                        TextLogIn(),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
// https://youtu.be/GFKqoIAPd0Q?si=nHDmZs7YzvmpWTRs