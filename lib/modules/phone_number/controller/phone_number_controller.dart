import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class PhoneNumberController extends GetxController {
  late TextEditingController phoneNumber;

  @override
  void onInit() {
    phoneNumber = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    phoneNumber.dispose();

    super.dispose();
  }
}
