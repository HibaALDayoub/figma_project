import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/colors/app_colors.dart';

class CustomSecurity extends StatelessWidget {
  const CustomSecurity({super.key, required this.text, this.child});
  final String text;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.greyShade,
          borderRadius: BorderRadius.circular(10.r)),
      width: 390.w,
      padding: EdgeInsets.symmetric(horizontal: 9.w),
      height: 39.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 17.sp,
            ),
          ),
          Container(
            child: child,
          )
        ],
      ),
    );
  }
}
