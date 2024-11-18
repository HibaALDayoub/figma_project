import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors/app_colors.dart';

class CardWallet extends StatelessWidget {
  const CardWallet({super.key, required this.name, required this.image});
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10.r)),
      width: 80.w,
      height: 90.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(top: 13.h),
              decoration: BoxDecoration(
                  color: AppColors.greyShade,
                  borderRadius: BorderRadius.circular(5.r)),
              width: 50.w,
              height: 50.h,
              child: Image.asset(image)),
          SizedBox(
            height: 15.h,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
