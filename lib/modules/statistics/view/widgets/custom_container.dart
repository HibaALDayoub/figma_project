import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors/app_colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      required this.quarterTurns,
      required this.text,
      required this.numText,
      this.iconColor,
      this.textColor,
      this.numColor});
  final int quarterTurns;
  final String text;
  final String numText;
  final Color? iconColor;
  final Color? textColor;
  final Color? numColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156.w,
      height: 150.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(15.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RotatedBox(
            quarterTurns: quarterTurns,
            child: Icon(
              Icons.arrow_outward_outlined,
              color: iconColor,
              size: 30.w,
            ),
          ),
          Text(text,
              style: TextStyle(
                  color: textColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700)),
          Text(numText,
              style: TextStyle(
                  color: numColor,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700))
        ],
      ),
    );
  }
}
