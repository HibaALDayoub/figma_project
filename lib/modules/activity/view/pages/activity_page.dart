import 'package:figma_proj/core/constant/colors/app_colors.dart';
import 'package:figma_proj/modules/home/view/widgets/custom_row_text.dart';
import 'package:figma_proj/modules/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../widgets/custom_app_bar.dart';
import '../wedgets/custom_card_activity.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        margin: EdgeInsets.only(top: 30.h),
        child: Column(
          children: [
            const CustomAppBar(
              text: "Activity",
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
                width: 325.w,
                height: 57.h,
                padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 17.h),
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(15.r)),
                child: CustomText(
                  text: "Search",
                  color: AppColors.lightGrey,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.start,
                )),
            SizedBox(
              height: 15.h,
            ),
            const CustomRowText(text: "Overall Incomings"),
            SizedBox(
              height: 14.h,
            ),
            const CustomCardActivity()
          ],
        ),
      ),
    );
  }
}
