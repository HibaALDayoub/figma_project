import 'package:figma_proj/core/constant/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

bool isSwitch = false;

class SettingController extends GetxController {
  List securityInformation = [
    {
      "text": "Change Pin",
      "child": const Icon(Icons.arrow_forward_ios),
    },
    {
      "text": "Change Password",
      "child": const Icon(Icons.arrow_forward_ios),
    },
    {
      "text": "Finger Print",
      "child": Switch(
        value: isSwitch,
        activeColor: AppColors.primaryColor,
        onChanged: (value) => isSwitch = value,
      ),
    },
  ];
}
