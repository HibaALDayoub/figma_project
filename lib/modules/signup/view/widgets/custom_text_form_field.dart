import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.labelText,
      this.onChanged,
      this.suffixIcon,
      this.showSuffixIcon,
      this.textInputType});
  final String labelText;
  final void Function(String)? onChanged;
  final IconData? suffixIcon;
  final Widget? showSuffixIcon;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // فيديو رقم 26 وائل
      keyboardType: textInputType ?? TextInputType.emailAddress,
      cursorHeight: 28,
      showCursor: false,
      cursorColor: AppColors.primaryColor,
      style: TextStyle(height: 2.5.h),
      decoration: InputDecoration(
          suffixIcon: showSuffixIcon,
          suffix: Icon(
            suffixIcon,
            color: AppColors.primaryColor,
          ),
          floatingLabelAlignment: FloatingLabelAlignment.start,
          labelText: labelText,
          contentPadding: EdgeInsets.only(bottom: 0, top: 40.h),
          floatingLabelStyle: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 17.sp,
              fontWeight: FontWeight.w500),
          labelStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.grey),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
            color: AppColors.primaryColor,
          ))),
      autovalidateMode: AutovalidateMode.always,
      onChanged: onChanged,
    );
  }
}
