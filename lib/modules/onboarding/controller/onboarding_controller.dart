import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_routes.dart';
import '../data/static_onboarding.dart';

class OnBoardingController extends GetxController {
  late PageController pageController;
  int currentPage = 0;
  nextBtnPge() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      // GetStorageClass.setInt(key: LocalStorageBox.step, value: 1);
      Get.toNamed(AppRoutes.signUpRoute);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(seconds: 1), curve: Curves.easeInOut);
    }
  }

  onPgeChangDots(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
