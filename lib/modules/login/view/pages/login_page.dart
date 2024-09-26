import 'package:flutter/material.dart';

import '../../../../core/constant/colors/app_colors.dart';
import '../../../signup/view/widgets/auth_overlapping_circles.dart';
import '../../../signup/view/widgets/custom_facebook_google_logo.dart';
import '../../../signup/view/widgets/custom_form.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text.dart';
import '../widgets/text_sign_up.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  GlobalKey<FormState> formState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          // اذا بدي ياه يمنع المستخدم انو يبلش اسمو برقم او ينتهي برقم بكتب هيك
          // if(value!.isempty || !regexp(r'[a-z A-Z]+$).hasmatch(value!)){return error name}
          children: [
            const AuthOverLappingCircles(),
            const CustomText(
              text: "Log In",
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
                      onPressed: () {},
                      text: "Log In",
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: 'Don’t have an account? ',
                          color: AppColors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                        ),
                        TextSignUp(),
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
