import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors/app_colors.dart';

class NumPad extends StatelessWidget {
  NumPad({super.key});
  final textfield = TextEditingController();

  Widget gridView() {
    return Container(
      padding: EdgeInsets.only(left: 30.w, right: 30.w),
      margin: EdgeInsets.only(top: 30.h, left: 30.w, right: 30.w),
      child: GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        children: [
          keyField("1"),
          keyField("2"),
          keyField("3"),
          keyField("4"),
          keyField("5"),
          keyField("6"),
          keyField("7"),
          keyField("8"),
          keyField("9"),
          keyField(""),
          keyField(
            "0",
          ),
          keyField(
            "",
          ),
        ],
      ),
    );
  }

  Widget keyField(numb) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60.r),
            border: Border.all(color: AppColors.grey)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              numb,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return gridView();
  }
}
