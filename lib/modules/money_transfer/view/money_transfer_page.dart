import 'package:figma_proj/core/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constant/colors/app_colors.dart';
import '../../signup/view/widgets/custom_text_form_field.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';

class MoneyTransferPage extends StatelessWidget {
  const MoneyTransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            margin: EdgeInsets.only(top: 30.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CustomAppBar(
                text: "Money Transfer ",
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Available Balance",
                style: TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                "\$2,85,856.20",
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 35.sp,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Please, enter the receiver’s bank account number in below field.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.lightGrey,
                  fontSize: 16.sp,
                ),
              ),
              CustomTextFormField(
                textInputType: TextInputType.number,
                labelText: "Account No.",
                suffixIcon: Icons.check_circle,
                onChanged: (value) {},
              ),
              CustomButton(
                height: 60.h,
                // margin
                padding: EdgeInsets.symmetric(horizontal: 65.w, vertical: 10.h),
                onPressed: () {
                  Get.toNamed(AppRoutes.selectCardRoute);
                },
                text: "Next",
                margin: EdgeInsets.only(left: 70.w, top: 40.h),
              ),
            ])));
  }
}
