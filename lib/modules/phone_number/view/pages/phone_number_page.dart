import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        margin: EdgeInsets.only(top: 15.h),
        child: Column(
          children: [
            const CustomAppBar(
              text: "Phone Number",
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomText(
              text: "Please add your\n mobile phone number",
              fontWeight: FontWeight.w500,
              color: AppColors.lightGrey,
              fontSize: 16.sp,
            ),
            CustomTextFormField(
              textInputType: TextInputType.number,
              labelText: "Phone Number",
              suffixIcon: Icons.check_circle,
              onChanged: (value) {},
            ),
            CustomButton(
              height: 60.h,
              padding: EdgeInsets.symmetric(horizontal: 65.w, vertical: 10.h),
              onPressed: () {
                Get.toNamed(AppRoutes.questionRoute);
              },
              text: "Confirm",
              margin: EdgeInsets.only(top: 40.h),
            ),
          ],
        ),
      ),
    ));
  }
}
