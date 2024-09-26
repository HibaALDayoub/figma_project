import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/assets_image/image_assets.dart';

class CustomFaceBookGoogle extends StatelessWidget {
  const CustomFaceBookGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: Get.width / 9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Image.asset(AppImageAsset.faceBookImage),
          Image.asset(AppImageAsset.googleImage, height: 30),
          Image.asset(
            AppImageAsset.faceBookImage,
            height: 35,
          ),
        ],
      ),
    );
  }
}
