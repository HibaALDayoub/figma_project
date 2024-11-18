import 'package:figma_proj/core/constant/app_routes.dart';
import 'package:figma_proj/modules/card_details/view/card_details_page.dart';
import 'package:figma_proj/modules/splash/view/pages/splash_page.dart';
import 'package:figma_proj/modules/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../activity/view/pages/activity_page.dart';
import '../../home/view/pages/home_page.dart';
import '../../setting_profile/view/setting_profile_page.dart';

class MainController extends GetxController {
  int selectedIndex = 0;
  List<Widget> mainWidgets = [
    HomePage(),
    CardDetailsPage(),
    ActivityPage(),
    SettingProfilePage(),
    // Container(
    //     height: 400,
    //     width: 400,
    //     color: Colors.blue,
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: [
    //         CustomButton(
    //           text: "myWalletRoute",
    //           height: 50,
    //           // padding: EdgeInsets.all(9),
    //           onPressed: () {
    //             Get.toNamed(AppRoutes.myWalletRoute);
    //           },
    //         ),
    //         CustomButton(
    //           text: "exchange page",
    //           height: 50,
    //           padding: EdgeInsets.all(9),
    //           onPressed: () {
    //             Get.toNamed(AppRoutes.exchangeRateRoute);
    //           },
    //         ),
    //         CustomButton(
    //           text: "money transfer",
    //           height: 50,
    //           padding: EdgeInsets.all(9),
    //           onPressed: () {
    //             Get.toNamed(AppRoutes.moneyTransferRoute);
    //           },
    //         ),
    //       ],
    //     )),
  ];
}
