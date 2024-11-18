import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/colors/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.height,
      this.margin,
      required this.text,
      required this.onPressed,
      this.padding,
      this.fontSize});
  final double? height;
  final EdgeInsetsGeometry? margin;
  final void Function() onPressed;
  final String text;
  final double? fontSize;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.only(bottom: 60.h),
      height: height ?? 60.h,
      child: MaterialButton(
        padding: padding ?? EdgeInsets.symmetric(horizontal: 60.w),
        textColor: Colors.white,
        onPressed: onPressed,
        color: AppColors.primaryColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
        child: Text(
          text,
          style: TextStyle(
              fontSize: fontSize ?? 22.sp, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
