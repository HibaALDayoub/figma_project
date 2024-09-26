import 'package:figma_proj/core/constant/app_routes.dart';
import 'package:figma_proj/core/constant/colors/app_colors.dart';
import 'package:figma_proj/core/constant/size/app_size.dart';
import 'package:figma_proj/modules/security_quastion/view/widgets/input_field.dart';
import 'package:figma_proj/modules/widgets/custom_button.dart';
import 'package:figma_proj/modules/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_app_bar.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            const CustomAppBar(
              text: "Security Questions",
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomText(
              text: "What was your First School’s Name? ",
              fontWeight: FontWeight.w800,
              color: AppColors.primaryColor,
              textAlign: TextAlign.left,
              fontSize: 44,
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomText(
              text: "Please, write a short answer in the field below.",
              fontWeight: FontWeight.w500,
              color: AppColors.lightGrey,
              fontSize: 16,
            ),
            const SizedBox(
              height: 30,
            ),
            const InputField(),
            SizedBox(
              height: AppSize.screenHeight(context: context) * 0.17,
            ),
            CustomButton(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 10),
              onPressed: () {
                Get.toNamed(AppRoutes.pinPage);
              },
              text: "Save",
              margin: const EdgeInsets.only(top: 40),
            ),
          ],
        ),
      ),
    ));
  }
}
