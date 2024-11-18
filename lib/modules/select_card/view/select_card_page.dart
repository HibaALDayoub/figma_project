import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_routes.dart';
import '../../../core/constant/colors/app_colors.dart';
import '../../signup/view/widgets/custom_text_form_field.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';

class SelectCardPage extends StatelessWidget {
  const SelectCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            margin: EdgeInsets.only(top: 30.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CustomAppBar(
                text: "Select a Card",
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                "Available Balance",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                "\$2,85,856.20",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 35.sp,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                "Please, enter the amount of money transfer in below field.",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                ),
              ),
              const CustomTextFormField(
                labelText: 'Enter Amount',
              ),
              CustomButton(
                height: 60.h,
                padding: EdgeInsets.symmetric(horizontal: 65.w, vertical: 10.h),
                onPressed: () {
                  Get.toNamed(AppRoutes.selectBank);
                },
                text: "Next",
                margin: EdgeInsets.only(top: 40.h, left: 80.w),
              ),
            ])));
  }
}
