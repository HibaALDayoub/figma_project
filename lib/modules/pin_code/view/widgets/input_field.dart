import 'package:figma_proj/core/constant/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputField extends StatelessWidget {
  const InputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(15.r),
        color: AppColors.primaryColor.withOpacity(0.2),
      ),
      child: TextField(
        minLines: 4,
        maxLines: 9,
        style: const TextStyle(),
        textAlign: TextAlign.left,
        decoration: InputDecoration(
            hintText: "Write your answer here...",
            hintStyle: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500),
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}
