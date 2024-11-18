import 'package:figma_proj/core/constant/colors/app_colors.dart';
import 'package:figma_proj/modules/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/constant/app_routes.dart';
import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/custom_button.dart';
import '../widgets/form_profile.dart';
import '../widgets/pick_image.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        margin: EdgeInsets.only(top: 15.h),
        child: Column(
          children: [
            const CustomAppBar(
              text: "Profile",
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomText(
              text: "Please set up your profile",
              fontWeight: FontWeight.w500,
              color: AppColors.lightGrey,
              fontSize: 16.sp,
            ),
            SizedBox(
              height: 30.h,
            ),
            PickImage(
              left: 25.w,
              top: 25.h,
            ),
            const FormProfile(),
            CustomButton(
              height: 60.h,
              padding: EdgeInsets.symmetric(horizontal: 65.w, vertical: 10.h),
              onPressed: () {
                Get.toNamed(AppRoutes.phoneNumberRoute);
              },
              text: "Set",
              margin: EdgeInsets.only(top: 40.h),
            ),
          ],
        ),
      )),
    );
  }
}
