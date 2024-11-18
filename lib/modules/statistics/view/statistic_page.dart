import 'package:figma_proj/core/constant/assets_image/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../card_details/view/widgets/custom_card_bottom.dart';
import '../../widgets/custom_app_bar.dart';

import 'widgets/Custom_body_statistic.dart';
import 'widgets/custom_header_statistics.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            margin: EdgeInsets.only(top: 30.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CustomAppBar(
                text: "Statistics",
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.calendar_today_rounded,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "09 Mar 2021- 13 Mar 2021",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              const CustomHeaderStatistic(),
              SizedBox(
                height: 15.h,
              ),
              CustomBodyStatistic(),
              SizedBox(
                height: 15.h,
              ),
              CustomCard(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          AppImageAsset.peopleImg,
                        )),
                    borderRadius: BorderRadius.circular(20.r)),
              )
            ])));
  }
}
