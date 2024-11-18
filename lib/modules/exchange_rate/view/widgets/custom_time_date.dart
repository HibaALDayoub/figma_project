import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors/app_colors.dart';
import '../../../../core/constant/size/app_size.dart';

class CustomTimeAndDateWidget extends StatelessWidget {
  const CustomTimeAndDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            // color: Colors.black12,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
            height: AppSize.screenHeight(context: context) * 0.04,
            width: AppSize.screenWidth(context: context) * 0.9,
            child: ListView.separated(
              itemCount: 6,
              separatorBuilder: (context, index) => SizedBox(
                width: 20.w,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Text(
                  "14:00",
                  style: TextStyle(color: AppColors.grey),
                );
              },
            )),
        SizedBox(
          height: 15.h,
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 50.w),
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.w),
            height: AppSize.screenHeight(context: context) * 0.04,
            width: AppSize.screenWidth(context: context) * 0.6,
            child: ListView.separated(
              itemCount: 6,
              separatorBuilder: (context, index) => SizedBox(
                width: 25.w,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Text(
                  "1H",
                  style: TextStyle(color: AppColors.grey),
                );
              },
            ))
      ],
    );
  }
}
