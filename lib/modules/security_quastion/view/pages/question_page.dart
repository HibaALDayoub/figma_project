import 'package:figma_proj/core/constant/app_routes.dart';
import 'package:figma_proj/core/constant/colors/app_colors.dart';
import 'package:figma_proj/core/constant/size/app_size.dart';
import 'package:figma_proj/modules/security_quastion/view/widgets/input_field.dart';
import 'package:figma_proj/modules/widgets/custom_button.dart';
import 'package:figma_proj/modules/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_app_bar.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          margin: EdgeInsets.only(top: 15.h),
          child: Column(
            children: [
              const CustomAppBar(
                text: "Security Questions",
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomText(
                text: "What was your First School’s Name? ",
                fontWeight: FontWeight.w800,
                color: AppColors.primaryColor,
                textAlign: TextAlign.left,
                fontSize: 44.sp,
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomText(
                text: "Please, write a short answer in the field below.",
                fontWeight: FontWeight.w500,
                color: AppColors.lightGrey,
                fontSize: 16.sp,
              ),
              SizedBox(
                height: 30.h,
              ),
              const InputField(),
              SizedBox(
                height: AppSize.screenHeight(context: context) * 0.17,
              ),
              CustomButton(
                height: 60.h,
                padding: EdgeInsets.symmetric(horizontal: 65.w, vertical: 10.h),
                onPressed: () {
                  Get.toNamed(AppRoutes.pinPage);
                },
                text: "Save",
                margin: EdgeInsets.only(top: 40.h),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
