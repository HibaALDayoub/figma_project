import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors/app_colors.dart';

class DotsPinNumber extends StatelessWidget {
  const DotsPinNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(5, (index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
            width: 17.w,
            height: 17.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: AppColors.primaryColor)),
          );
        }));
  }
}
