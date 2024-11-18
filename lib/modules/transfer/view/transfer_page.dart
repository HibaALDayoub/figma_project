import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/colors/app_colors.dart';
import '../../widgets/custom_app_bar.dart';
import 'widgets/body_transfer_page.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            margin: EdgeInsets.only(top: 30.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CustomAppBar(
                text: "Transfer Request",
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Available Balance",
                style: TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "\$2,85,856.20",
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 35.sp,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Please, enter the receiver’s bank account number or phone number with the amount of transfer request in below field.",
                style: TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 15.sp,
                ),
              ),
              BodyTransferPage(),
              // Expanded(
              //   child: SingleChildScrollView(
              //     child: Form(
              //         key: formState2,
              //         child: Column(
              //           children: [
              //             const CustomTextFormField(
              //               labelText: 'Sender’s Account No.',
              //               suffixIcon: Icons.check_circle,
              //             ),
              //             const CustomTextFormField(
              //               labelText: 'Amount of Transfer Request',
              //             ),
              //             const CustomTextFormField(
              //               labelText: 'Requestee’s Name',
              //             ),
              //             SizedBox(
              //               height: 25.h,
              //             ),
              //             CustomButton(
              //               height: 60.h,
              //               padding: EdgeInsets.symmetric(
              //                   horizontal: 65.w, vertical: 10.h),
              //               onPressed: () {
              //                 // Get.toNamed(AppRoutes.profileRoute);
              //               },
              //               text: "Send",
              //               margin: EdgeInsets.only(top: 40.h),
              //             ),
              //           ],
              //         )),
              //   ),
              // ),
            ])));
  }
}
