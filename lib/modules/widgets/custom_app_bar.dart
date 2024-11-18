import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../core/constant/colors/app_colors.dart';
import '../../core/constant/size/app_size.dart';
import 'custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          // alignment: Alignment.center,
          // margin: EdgeInsets.only(right: 5.w),
          width: AppSize.screenWidth(context: context) * 0.22,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.r),
            color: AppColors.primaryColor,
          ),
          height: AppSize.screenHeight(context: context) * 0.054,
          child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: AppColors.whiteColor,
                size: 25.w,
                weight: 70,
              )),
        ),
        SizedBox(
          width: AppSize.screenWidth(context: context) * 0.07,
        ),
        CustomText(
          text: text,
          color: AppColors.secondaryColor,
          fontSize: 22.sp,
          fontWeight: FontWeight.w600,
        )
      ],
    );
  }
}
