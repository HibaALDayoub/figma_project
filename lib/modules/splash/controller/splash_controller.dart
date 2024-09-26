import 'package:get/get.dart';

import '../../../core/constant/app_routes.dart';

class SplashController extends GetxController {
  navigate() async {
    await Future.delayed(const Duration(seconds: 10), () {
      Get.toNamed(AppRoutes.onBoardingRoute
          // AppServices.step == 0
          //   ? AppRoutes.onBoardingRoute
          //   : AppRoutes().loginRoute2

          );
    });
  }

  @override
  void onInit() {
    navigate();

    super.onInit();
  }
}
