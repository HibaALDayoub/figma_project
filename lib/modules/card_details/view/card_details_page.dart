import 'package:figma_proj/core/constant/app_routes.dart';
import 'package:figma_proj/modules/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constant/colors/app_colors.dart';
import '../../home/view/widgets/custom_card_page.dart';
import '../../home/view/widgets/custom_row_text.dart';
import '../../widgets/custom_app_bar.dart';
import 'widgets/custom_card_bottom.dart';
import 'widgets/custom_row_card_details.dart';

class CardDetailsPage extends StatelessWidget {
  const CardDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      margin: EdgeInsets.only(top: 30.h),
      child: Column(children: [
        const CustomAppBar(
          text: "Card Details",
        ),
        SizedBox(
          height: 15.h,
        ),
        const CustomCardPage(),
        SizedBox(
          height: 15.h,
        ),
        const CustomRowCardDetails(),
        SizedBox(
          height: 10.h,
        ),
        CustomButton(
          text: "Add Card",
          onPressed: () {
            Get.toNamed(AppRoutes.moneyTransferRoute);
          },
          padding: EdgeInsets.symmetric(horizontal: 28.w),
        ),
        const CustomRowText(
          text: "Cash Backs",
        ),
        SizedBox(
          height: 20.h,
        ),
        SingleChildScrollView(
            child: CustomCard(
          decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(15.r)),
          child:
              Icon(Icons.wallet_travel_outlined, color: AppColors.whiteColor),
        ))
      ]),
    ));
  }
}
