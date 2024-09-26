import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_routes.dart';

class LogInController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController confirmPassword;

  Login() {
    // debugPrint(password.text);
    // Get.toNamed(AppRoutes().completeRegisterRoute);
  }

  goToSignIn() {
    Get.toNamed(AppRoutes.signUpRoute);
  }

  @override
  void onInit() {
    //initialize value

    email = TextEditingController();
    password = TextEditingController();
    confirmPassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    confirmPassword.dispose();
    password.dispose();
    super.dispose();
  }
}
