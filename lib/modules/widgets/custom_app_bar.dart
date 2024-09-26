import 'package:flutter/material.dart';

import '../../core/constant/colors/app_colors.dart';
import '../../core/constant/size/app_size.dart';
import 'custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 15),
          width: AppSize.screenWidth(context: context) * 0.23,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: AppColors.primaryColor,
          ),
          height: AppSize.screenHeight(context: context) * 0.054,
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.whiteColor,
                size: 25,
                weight: 70,
              )),
        ),
        SizedBox(
          width: AppSize.screenWidth(context: context) * 0.11,
        ),
        CustomText(
          text: text,
          color: AppColors.secondaryColor,
          fontSize: 22,
          fontWeight: FontWeight.w600,
        )
      ],
    );
  }
}
