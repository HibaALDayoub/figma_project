import 'package:figma_proj/modules/setting_profile/view/widgits/custom_body_setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/colors/app_colors.dart';
import '../../widgets/custom_app_bar.dart';

import 'widgits/custom_header_setting.dart';

class SettingProfilePage extends StatelessWidget {
  const SettingProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
            margin: EdgeInsets.only(top: 30.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CustomAppBar(
                text: "Profile Settings",
              ),
              SizedBox(
                height: 30.h,
              ),
              const CustomHeaderSetting(),
              Text(
                "Personal Information",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 17.sp,
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              CustomBodySetting(),
              Text(
                "Other",
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                ),
              )
            ])));
  }
}
