import 'package:figma_proj/modules/widgets/custom_app_bar2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/constant/app_routes.dart';
import '../../../../core/constant/colors/app_colors.dart';
import '../../../signup/view/widgets/custom_text_form_field.dart';
import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text.dart';

class PhoneNumberPage extends StatelessWidget {
  const PhoneNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // appBar: customAppBar2(context),
      body: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            CustomAppBar(
              text: "Phone Number",
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomText(
              text: "Please add your\n mobile phone number",
              fontWeight: FontWeight.w500,
              color: AppColors.lightGrey,
              fontSize: 16,
            ),
            CustomTextFormField(
              textInputType: TextInputType.number,
              labelText: "Phone Number",
              suffixIcon: Icons.check_circle,
              onChanged: (value) {},
            ),
            CustomButton(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 10),
              onPressed: () {
                Get.toNamed(AppRoutes.questionRoute);
              },
              text: "Confirm",
              margin: const EdgeInsets.only(top: 40),
            ),
          ],
        ),
      ),
    ));
  }
}
