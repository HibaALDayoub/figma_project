import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors/app_colors.dart';
import '../../../profile/view/widgets/pick_image.dart';

class CustomHeaderSetting extends StatelessWidget {
  const CustomHeaderSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 75.w),
          child: Text(
            "Your Profile Information",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 18.sp,
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 120.w),
          child: PickImage(
            heightContainer: 110.h,
            widthContainer: 110.w,
            left: 33.w,
            top: 30.h,
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
      ],
    );
  }
}
