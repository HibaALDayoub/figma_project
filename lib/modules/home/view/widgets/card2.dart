import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors/app_colors.dart';
import '../../../widgets/custom_text.dart';
import 'first_chihd_in_card2.dart';

class Card2 extends StatelessWidget {
  Card2(
      {super.key,
      required this.firstNumber,
      required this.quarterTurns,
      required this.assetName,
      required this.firstName,
      required this.date,
      required this.assetPerson});
  final String firstNumber;
  final int quarterTurns;
  final String assetName;
  final String assetPerson;
  final String firstName;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 157.w,
      height: 198.h,
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 10.h),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: AppColors.greyShade,
                offset: Offset(4.0.w, 3.0.h),
                blurRadius: 5,
                spreadRadius: 1),
            BoxShadow(
                color: AppColors.whiteColor,
                offset: Offset(-4.0.w, -4.0.h),
                blurRadius: 1,
                spreadRadius: 1),
          ],
          image: DecorationImage(
              image: AssetImage(
                assetName,
              ),
              alignment: Alignment.bottomLeft),
          borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FrstChildInCard(
            firstNumber: firstNumber,
            quarterTurns: quarterTurns,
            assetPerson: assetPerson,
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: " From   ",
                    color: AppColors.grey,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomText(
                    text: firstName,
                    color: AppColors.blackColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  CustomText(
                    text: date,
                    textAlign: TextAlign.start,
                    color: AppColors.grey,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
