import 'package:figma_proj/core/constant/colors/app_colors.dart';
import 'package:figma_proj/modules/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/app_routes.dart';
import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/custom_button.dart';
import '../widgets/form_profile.dart';
import '../widgets/pick_image.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            const CustomAppBar(
              text: "Profile",
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomText(
              text: "Please set up your profile",
              fontWeight: FontWeight.w500,
              color: AppColors.lightGrey,
              fontSize: 16,
            ),
            const SizedBox(
              height: 30,
            ),
            const PickImage(),
            const FormProfile(),
            CustomButton(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 10),
              onPressed: () {
                Get.toNamed(AppRoutes.phoneNumberRoute);
              },
              text: "Set",
              margin: const EdgeInsets.only(top: 40),
            ),
          ],
        ),
      )),
    );
  }
}
