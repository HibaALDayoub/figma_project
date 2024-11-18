import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/constant/assets_image/image_assets.dart';
import '../../controller/statistic_controller.dart';

class CustomBodyStatistic extends StatelessWidget {
  CustomBodyStatistic({super.key});
  final StatisticController controller = Get.put(StatisticController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342.w,
      height: 357.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
      padding: EdgeInsets.symmetric(vertical: 25.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Expenses Trends",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700)),
          Row(
            children: [
              Container(
                width: 270.w,
                height: 240.h,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
                child: Image.asset(
                  AppImageAsset.statisticImage,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                height: 210.h,
                width: 49.w,
                margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 20.h),
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Text(controller.moneyList[index]);
                  },
                  itemCount: controller.moneyList.length,
                  separatorBuilder: (context, index) => SizedBox(
                    height: 20.h,
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 30.h,
            width: 320.w,
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Text(controller.dayList[index]);
              },
              itemCount: controller.dayList.length,
              separatorBuilder: (context, index) => SizedBox(
                width: 36.w,
              ),
            ),
          )
        ],
      ),
    );
  }
}
