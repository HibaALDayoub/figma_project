import 'package:figma_proj/core/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

import '../../../../core/constant/assets_image/image_assets.dart';
import '../../../../core/constant/colors/app_colors.dart';
import '../../../../core/constant/size/app_size.dart';
import '../../../widgets/custom_text.dart';

class CustomCardActivity extends StatelessWidget {
  const CustomCardActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(AppRoutes.exchangeRateRoute);
      },
      child: Container(
        width: 342.w,
        height: 275.h,
        padding: EdgeInsets.only(top: 35.h, left: 15.w, right: 15.w),
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            image: const DecorationImage(
                image: AssetImage(
                  AppImageAsset.vectorImage,
                ),
                alignment: Alignment.bottomLeft),
            borderRadius: BorderRadius.circular(20.r)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 42.w,
                  height: 39.h,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: const Icon(Icons.insert_invitation_outlined,
                      color: AppColors.whiteColor),
                ),
                CustomText(
                  text: "09-13 May",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  width: 30.w,
                ),
                const Icon(
                  Icons.insert_chart,
                  color: AppColors.secondaryColor,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      right: AppSize.screenWidth(context: context) * 0.16,
                      top: AppSize.screenHeight(context: context) * 0.07),
                  width: 98.w,
                  height: 39.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: AppColors.primaryColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomText(
                        text: "\$50.84",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.whiteColor,
                      ),
                      RotatedBox(
                        quarterTurns: 2,
                        child: Icon(
                          Icons.arrow_outward_outlined,
                          color: AppColors.whiteColor,
                          size: 20.w,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: AppSize.screenWidth(context: context) * 0.09,
                      top: AppSize.screenHeight(context: context) * 0.0008),
                  width: 12.w,
                  height: 12.h,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(25.r)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
