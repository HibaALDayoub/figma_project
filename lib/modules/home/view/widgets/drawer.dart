import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/constant/app_routes.dart';
import '../../../../core/constant/assets_image/image_assets.dart';
import '../../../../core/constant/colors/app_colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        // surfaceTintColor: AppColors.secondaryColor,
        // backgroundColor: const Color.fromARGB(255, 159, 50, 50),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(0),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(40),
          ),
        ),
        elevation: 0,
        // backgroundColor: AppColors.,
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    margin:
                        EdgeInsets.symmetric(horizontal: 0.w, vertical: 20.h),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(AppImageAsset.hotelImage),
                    ),
                  ),
                  const Text(
                    "Hiba AL Dayoub",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Hiba.dayoub.2018@gmail.com",
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              title: const Text(
                "My Wallet",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Get.toNamed(AppRoutes.myWalletRoute);
              },
              leading: Icon(
                size: 35.w,
                Icons.account_balance_wallet_outlined,
                color: AppColors.secondaryColor,
              ),
            ),
            ListTile(
              title: const Text(
                "Profile",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Get.toNamed(AppRoutes.settingRoute);
              },
              leading: Icon(
                size: 35.w,
                Icons.person_2_outlined,
                color: AppColors.secondaryColor,
              ),
            ),
            ListTile(
              title: const Text(
                "Statistics",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Get.toNamed(AppRoutes.statisticsRoute);
              },
              leading: Icon(
                size: 35.w,
                Icons.insert_chart_outlined_rounded,
                color: AppColors.secondaryColor,
              ),
            ),
            ListTile(
              title: const Text(
                "Transfer",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Get.toNamed(AppRoutes.transferRoute);
              },
              leading: Icon(
                Icons.person_pin,
                size: 35.w,
                color: AppColors.secondaryColor,
              ),
            ),
            ListTile(
              title: const Text(
                "Settings",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Get.toNamed(AppRoutes.settingRoute);
              },
              leading: Icon(
                Icons.settings_suggest_outlined,
                color: AppColors.secondaryColor,
                size: 35.w,
              ),
            ),
          ],
        ));
  }
}
