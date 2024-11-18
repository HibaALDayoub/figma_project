import 'package:figma_proj/core/constant/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/custom_app_bar.dart';
import 'widgets/custom_container_rate.dart';
import 'widgets/custom_time_date.dart';

class ExchangeRatePage extends StatelessWidget {
  const ExchangeRatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      margin: EdgeInsets.only(top: 30.h),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const CustomAppBar(
          text: "Exchange Rate",
        ),
        SizedBox(
          height: 20.h,
        ),
        Text("USD to PKR",
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.secondaryColor)),
        SizedBox(
          height: 10.h,
        ),
        Text("\$1=Rs. 189.12",
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.grey)),
        SizedBox(
          height: 10.h,
        ),
        Text("\$35201.63",
            style: TextStyle(
                fontSize: 35.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor)),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            const Icon(
              Icons.calendar_today_rounded,
              color: AppColors.secondaryColor,
            ),
            SizedBox(
              width: 30.w,
            ),
            Text(
              "09 - 13 May",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        const CustomContainerRate(),
        const CustomTimeAndDateWidget()
      ]),
    ));
  }
}
