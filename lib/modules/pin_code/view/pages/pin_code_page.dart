import 'package:figma_proj/core/constant/app_routes.dart';
import 'package:figma_proj/core/constant/colors/app_colors.dart';
import 'package:figma_proj/core/constant/size/app_size.dart';
import 'package:figma_proj/modules/widgets/custom_button.dart';
import 'package:figma_proj/modules/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../widgets/custom_app_bar.dart';
import '../widgets/dots_pin_number.dart';
import '../widgets/numpad.dart';

// https://youtu.be/6br7a-Q5cus?si=5ox6Dx7n7Gj3-NbT
class PinCodePage extends StatelessWidget {
  const PinCodePage({super.key});

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
                text: "Set Pin Code ",
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomText(
                text: "Please set your ownPin Code ",
                fontWeight: FontWeight.w500,
                color: AppColors.grey,
                textAlign: TextAlign.left,
                fontSize: 16.sp,
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomText(
                text: "Set Pin Code (5-digit) ",
                fontWeight: FontWeight.w400,
                color: AppColors.grey,
                textAlign: TextAlign.left,
                fontSize: 13.sp,
              ),
              SizedBox(
                height: 60.h,
              ),

              // https://youtu.be/Sgj63d1I3Zs?si=TP3Vzt8i0ORNehrZ
              const DotsPinNumber(),
              NumPad(),
              SizedBox(
                height: AppSize.screenHeight(context: context) * 0.01,
              ),
              CustomButton(
                height: 60.h,
                padding: EdgeInsets.symmetric(horizontal: 55.w, vertical: 10.h),
                onPressed: () {
                  Get.toNamed(AppRoutes.mainRoute);
                },
                text: "Set",
                margin: EdgeInsets.only(top: 40.h),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
