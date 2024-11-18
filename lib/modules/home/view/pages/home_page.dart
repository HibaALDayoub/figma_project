import 'package:figma_proj/core/constant/assets_image/image_assets.dart';
import 'package:figma_proj/core/constant/colors/app_colors.dart';
import 'package:figma_proj/modules/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/card2.dart';
import '../widgets/custom_card_page.dart';
import '../widgets/custom_row_text.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.blackColor),
        // leading:
        //  IconButton(
        //     onPressed: () {},
        //     icon: Icon(
        //       Icons.menu,
        //       color: AppColors.blackColor,
        //       size: 30.w,
        //     )),
        // actions: [
        //   IconButton(
        //       onPressed: () {},
        //       icon: Icon(
        //         Icons.notifications_none_sharp,
        //         color: AppColors.blackColor,
        //         size: 30.w,
        //       ))
        // ],
        // elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Current Balance",
                color: AppColors.grey,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.start,
                fontSize: 18.sp,
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomText(
                textAlign: TextAlign.start,
                text: "\$2,85,856.20",
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w700,
                fontSize: 35.sp,
              ),
              SizedBox(
                height: 15.h,
              ),
              const CustomCardPage(),
              SizedBox(
                height: 15.h,
              ),
              const CustomRowText(text: "Incoming Transactions"),
              SizedBox(
                height: 15.h,
              ),
              Card2(
                  date: "  23 December 2020",
                  firstName: "Johnny \nBairstow ",
                  assetPerson: AppImageAsset.peopleImg,
                  firstNumber: "+ \$54.23  ",
                  quarterTurns: 2,
                  assetName: AppImageAsset.cartHomeImage),
              SizedBox(
                height: 15.h,
              ),
              const CustomRowText(text: "Outgoing Transactions"),
              SizedBox(
                height: 15.h,
              ),
              Card2(
                  date: "  12 December 2021",
                  assetPerson: AppImageAsset.person3Img,
                  firstName: "John  \nMorrison ",
                  firstNumber: "- \$396.84  ",
                  quarterTurns: 4,
                  assetName: AppImageAsset.wavyImage),
            ],
          ),
        ),
      ),
    ));
  }
}
