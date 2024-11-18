import 'package:figma_proj/core/constant/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/main_controller.dart';

class CustomBottomNavicationBar extends StatelessWidget {
  CustomBottomNavicationBar({
    super.key,
  });
  final MainController controller = Get.find();
  final bool isSelect = true;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) => Container(
        height: 65.h,
        margin: EdgeInsets.symmetric(horizontal: 17.w, vertical: 14.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          // boxShadow: [
          //   BoxShadow(
          //       blurRadius: 900,
          //       blurStyle: BlurStyle.normal,
          //       color: AppColors.primaryColor,
          //       offset: Offset(2, 8))
          // ],
          border: Border.all(color: AppColors.primaryColor),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            controller.selectedIndex == 0
                ? Container(
                    width: 50,
                    height: 65,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          topRight: Radius.circular(20.r)),
                    ),
                    child: InkWell(
                      onTap: () {
                        controller.selectedIndex = 0;
                        controller.update();
                        print(controller.selectedIndex);
                      },
                      child: Icon(
                        Icons.home_outlined,
                        size: 30.w,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  )
                : InkWell(
                    onTap: () {
                      controller.selectedIndex = 0;
                      controller.update();
                      print("___________${controller.selectedIndex}");
                    },
                    child: Icon(
                      Icons.home_outlined,
                      color: AppColors.secondaryColor,
                      size: 30.w,
                    ),
                  ),
            // ____________________________________________________
            controller.selectedIndex == 1
                ? Container(
                    width: 50.w,
                    height: 65.h,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          topRight: Radius.circular(20.r)),
                    ),
                    child: Icon(
                      Icons.account_balance_wallet_outlined,
                      size: 30.w,
                      color: AppColors.whiteColor,
                    ),
                  )
                : InkWell(
                    onTap: () {
                      controller.selectedIndex = 1;
                      controller.update();
                      print(controller.selectedIndex);
                    },
                    child: Icon(
                      Icons.account_balance_wallet_outlined,
                      color: AppColors.secondaryColor,
                      size: 30.w,
                    ),
                  ),
            // ___________________________________________
            controller.selectedIndex == 2
                ? Container(
                    width: 50.w,
                    height: 65.h,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          topRight: Radius.circular(20.r)),
                    ),
                    child: Icon(
                      Icons.insert_chart_outlined_rounded,
                      size: 30.w,
                      color: AppColors.whiteColor,
                    ),
                  )
                : InkWell(
                    onTap: () {
                      controller.selectedIndex = 2;
                      controller.update();
                      print(controller.selectedIndex);
                    },
                    child: Icon(
                      Icons.insert_chart_outlined_rounded,
                      color: AppColors.secondaryColor,
                      size: 30.w,
                    ),
                  ),
            controller.selectedIndex == 3
                ? Container(
                    width: 50.w,
                    height: 65.h,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          topRight: Radius.circular(20.r)),
                    ),
                    child: Icon(
                      Icons.person_pin_circle_outlined,
                      size: 30.w,
                      color: AppColors.whiteColor,
                    ),
                  )
                : InkWell(
                    onTap: () {
                      controller.selectedIndex = 3;
                      controller.update();
                      print(controller.selectedIndex);
                    },
                    child: Icon(
                      Icons.person_pin_circle_outlined,
                      color: AppColors.secondaryColor,
                      size: 30.w,
                    ),
                  ),
          ]),
        ),
      ),
    );
  }
}
// https://youtu.be/tM9d19eGCtE?si=TWel5iIyvFA3h2dd
             