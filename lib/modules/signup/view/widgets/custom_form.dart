import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors/app_colors.dart';
import 'custom_text_form_field.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          labelText: "Email Address",
          suffixIcon: Icons.check_circle,
          onChanged: (value) {},
        ),
        CustomTextFormField(
          labelText: "Password",
          showSuffixIcon: Icon(
            Icons.remove_red_eye_outlined,
            color: AppColors.primaryColor,
            size: 18.w,
          ),
          onChanged: (value) {},
        ),
        CustomTextFormField(
          labelText: "Confirm Password",
          showSuffixIcon: Icon(
            Icons.remove_red_eye_outlined,
            color: AppColors.primaryColor,
            size: 18.w,
          ),
          onChanged: (value) {},
        ),
      ],
    );
  }
}
