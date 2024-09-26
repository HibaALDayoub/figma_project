import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_routes.dart';

class SignUpController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController confirmPassword;

  signUp() {
    // debugPrint(password.text);
    // Get.toNamed(AppRoutes.profileRoute);
  }

  goToSignIn() {
    Get.toNamed(AppRoutes.logInRoute);
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
