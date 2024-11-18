import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors/app_colors.dart';
import '../../../widgets/custom_text.dart';

class CustomRowCardDetails extends StatelessWidget {
  const CustomRowCardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 323.w,
      height: 64.h,
      decoration: BoxDecoration(
          color: AppColors.greyShade,
          borderRadius: BorderRadius.circular(15.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50.h,
            width: 96.w,
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(15.r)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                      text: "USD",
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: AppColors.whiteColor,
                    ),
                    SizedBox(
                      height: 4.h,
                    )
                  ],
                ),
                SizedBox(
                  width: 1.w,
                ),
                Column(
                  children: [
                    RotatedBox(
                      quarterTurns: 2,
                      child: Icon(
                        Icons.arrow_outward_outlined,
                        color: AppColors.whiteColor,
                        size: 20.w,
                      ),
                    ),
                    CustomText(
                      text: "67.34",
                      color: AppColors.whiteColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
