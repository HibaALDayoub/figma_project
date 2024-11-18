import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors/app_colors.dart';
import '../../../widgets/custom_text.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, this.decoration, this.child});
  final Decoration? decoration;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 322.w,
      height: 79.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: AppColors.whiteColor),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 57.w,
              height: 57.h,
              decoration: decoration,
              // BoxDecoration(
              //     color: AppColors.secondaryColor,
              //     borderRadius: BorderRadius.circular(15.r)),
              child: child,

              // const Icon(Icons.wallet_travel_outlined,
              //     color: AppColors.whiteColor),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Entertainment",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 8.h,
                ),
                CustomText(
                  text: "4:34 PM",
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
            SizedBox(
              width: 25.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                RotatedBox(
                  quarterTurns: 2,
                  child: Icon(
                    Icons.arrow_outward_outlined,
                    color: AppColors.primaryColor,
                    size: 24.w,
                  ),
                ),
                CustomText(
                  text: "\$7.34",
                  color: AppColors.primaryColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                )
              ],
            )
          ]),
    );
  }
}
