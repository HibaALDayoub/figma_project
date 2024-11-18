import 'package:figma_proj/modules/setting_profile/view/widgits/information_body_setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/constant/colors/app_colors.dart';
import '../../controller/setting_controller.dart';
import '../../data/setting_static_data.dart';
import 'custom_security.dart';

class CustomBodySetting extends StatelessWidget {
  CustomBodySetting({super.key});
  final SettingController controller = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 260.h,
              width: 375.w,
              child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InformationBodySetting(
                        text: personalInformationList[index].text ?? "",
                        textNum: personalInformationList[index].textNum ?? "");
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 8.h,
                    );
                  },
                  itemCount: personalInformationList.length),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Security",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w700,
                fontSize: 17.sp,
              ),
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 5.h),
              itemCount: controller.securityInformation.length,
              itemBuilder: (context, index) {
                return CustomSecurity(
                  text: controller.securityInformation[index]["text"],
                  child: controller.securityInformation[index]["child"],
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 7.h,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
