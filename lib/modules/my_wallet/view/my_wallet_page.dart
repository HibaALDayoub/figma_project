import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/colors/app_colors.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_text.dart';
import '../data/wallet_static_data.dart';
import 'widgets/card_wallet.dart';
import 'widgets/custom_card_my_wallet.dart';

class MyWalletPage extends StatelessWidget {
  MyWalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            margin: EdgeInsets.only(top: 30.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CustomAppBar(
                text: "My Wallet",
              ),
              SizedBox(
                height: 25.h,
              ),
              CustomText(
                text: "Available Balance",
                color: AppColors.grey,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.start,
                fontSize: 18.sp,
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomText(
                textAlign: TextAlign.start,
                text: "\$2,85,856.20",
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w700,
                fontSize: 35.sp,
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
                            // : EdgeInsets.all(10),
                            itemCount: walletList.length,

                            itemBuilder: (BuildContext context, int index) {
                              return CardWallet(
                                image: walletList[index].icon ?? "",
                                name: walletList[index].text ?? "",
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "My Cards",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16.sp),
                            ),
                            const Icon(Icons.add_circle_outline)
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        const CustomCardMyWallet(),
                      ]),
                ),
              )
            ])));
  }
}
