import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors/app_colors.dart';
import '../../../splash/view/widgets/two_overlapping_circles.dart';
import '../../../widgets/custom_text.dart';

class CustomCardPage extends StatelessWidget {
  const CustomCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: 320.w,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(20.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TwoOverlappingCircles(
            padding: EdgeInsets.only(top: 8.h),
            left: 15.w,
            widthCircle: 25.w,
            heightCircle: 25.h,
            heightContainer: 40.h,
            widthContainer: 40.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(
                  text: "VISA", fontSize: 17.sp, fontWeight: FontWeight.w500),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      text: "Master Card",
                      color: AppColors.grey,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                  SizedBox(
                    width: 8.w,
                  ),
                  CustomText(
                      color: AppColors.grey,
                      text: ". 6253",
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                ],
              ),
            ],
          ),
          CustomText(
            text: "\$758964.10",
            color: AppColors.primaryColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          )
        ],
      ),
    );
  }
}
