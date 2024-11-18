import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/colors/app_colors.dart';

class InformationBodySetting extends StatelessWidget {
  const InformationBodySetting(
      {super.key, required this.text, required this.textNum});
  final String text;
  final String textNum;

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
          Text(
            textNum,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: AppColors.grey,
              fontWeight: FontWeight.w700,
              fontSize: 17.sp,
            ),
          ),
        ],
      ),
    );
  }
}
