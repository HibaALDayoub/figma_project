import 'package:figma_proj/modules/select_bank/controller/select_bank_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constant/colors/app_colors.dart';
import '../../widgets/custom_app_bar.dart';
import 'widgets/card_bank.dart';

class SelectBankPage extends StatelessWidget {
  SelectBankPage({super.key});
  final SelectBankController controller = Get.put(SelectBankController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            margin: EdgeInsets.only(top: 30.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CustomAppBar(
                text: "Select a Bank",
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                "Available Balance",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                "\$2,85,856.20",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 35.sp,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                "Please, select a bank from which you want to do the money transfer.",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                      // clipBehavior: Clip.antiAlias,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                    SizedBox(
                      height: 500.h,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        ),
                        itemCount: controller.bankList.length,

                        itemBuilder: (context, index) => CardBank(
                            color: controller.bankList[index]["color"],
                            text: controller.bankList[index]["text"]),
                        // : EdgeInsets.all(10),
                      ),
                    ),
                  ])))
            ])));
  }
}
