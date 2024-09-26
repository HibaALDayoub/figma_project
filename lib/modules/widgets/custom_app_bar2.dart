import 'package:flutter/material.dart';

import '../../core/constant/colors/app_colors.dart';
import '../../core/constant/size/app_size.dart';

AppBar customAppBar2(BuildContext context) {
  return AppBar(
    title: Text("kkk"),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    leadingWidth: AppSize.screenWidth(context: context) * 0.23,
    titleSpacing: 0,
    leading: Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 15),
      width: AppSize.screenWidth(context: context) * 0.23,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppColors.primaryColor,
      ),
      height: AppSize.screenHeight(context: context) * 0.054,
      child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.whiteColor,
            size: 25,
            weight: 70,
          )),
    ),
  );
}
