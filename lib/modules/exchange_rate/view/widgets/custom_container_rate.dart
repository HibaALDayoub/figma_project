import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/assets_image/image_assets.dart';
import '../../../../core/constant/colors/app_colors.dart';
import '../../../../core/constant/size/app_size.dart';
import '../../../widgets/custom_text.dart';

class CustomContainerRate extends StatelessWidget {
  const CustomContainerRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342.w,
      height: 357.h,
      padding: EdgeInsets.only(top: 35.h, left: 15.w, right: 15.w),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          image: const DecorationImage(
              image: AssetImage(
                AppImageAsset.overlayImage,
              ),
              alignment: Alignment.bottomLeft),
          borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(
                    right: AppSize.screenWidth(context: context) * 0.2,
                    top: AppSize.screenHeight(context: context) * 0.068),
                width: 70.w,
                height: 39.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: AppColors.primaryColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomText(
                      text: "25%",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.whiteColor,
                    ),
                    RotatedBox(
                      quarterTurns: 4,
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
                    right: AppSize.screenWidth(context: context) * 0.23,
                    top: AppSize.screenHeight(context: context) * 0.001),
                width: 12.w,
                height: 12.h,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(25.r)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
