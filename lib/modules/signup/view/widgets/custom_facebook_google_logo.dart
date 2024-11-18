import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/constant/assets_image/image_assets.dart';

class CustomFaceBookGoogle extends StatelessWidget {
  const CustomFaceBookGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      padding: EdgeInsets.symmetric(horizontal: Get.width / 9.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Image.asset(AppImageAsset.faceBookImage),
          Image.asset(AppImageAsset.googleImage, height: 30.h),
          Image.asset(
            AppImageAsset.faceBookImage,
            height: 35.h,
          ),
        ],
      ),
    );
  }
}
