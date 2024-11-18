import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors/app_colors.dart';
import '../../../widgets/custom_text.dart';

class CustomRowText extends StatelessWidget {
  const CustomRowText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: text,
          color: AppColors.grey,
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
        ),
        CustomText(
          text: "See All >",
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
        )
      ],
    );
  }
}
