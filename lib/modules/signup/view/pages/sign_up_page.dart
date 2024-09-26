import 'package:figma_proj/core/constant/colors/app_colors.dart';
import 'package:flutter/material.dart';
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

  GlobalKey<FormState> formState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Get.put(SignUpController());
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // SizedBox(height: AppSize().context,)
          // اذا بدي ياه يمنع المستخدم انو يبلش اسمو برقم او ينتهي برقم بكتب هيك
          // if(value!.isempty || !regexp(r'[a-z A-Z]+$).hasmatch(value!)){return error name}
          children: [
            const AuthOverLappingCircles(),
            const CustomText(
              text: "Sign Up",
              fontWeight: FontWeight.w700,
              fontSize: 40,
            ),
            Form(
                key: formState,
                child: Column(
                  children: [
                    const CustomForm(),
                    CustomButton(
                      height: 60,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 65, vertical: 10),
                      onPressed: () {
                        Get.toNamed(AppRoutes.profileRoute);
                      },
                      text: "Sign Up",
                      margin: const EdgeInsets.only(top: 40),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "____________  or  ____________",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey),
                    ),
                    const CustomFaceBookGoogle(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CustomText(
                          text: 'Already have an account? ',
                          color: AppColors.grey,
                          fontSize: 14,
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