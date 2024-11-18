import 'package:flutter/material.dart';

import '../../../../core/constant/colors/app_colors.dart';
import 'custom_container.dart';

class CustomHeaderStatistic extends StatelessWidget {
  const CustomHeaderStatistic({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomContainer(
          iconColor: AppColors.secondaryColor,
          numColor: AppColors.secondaryColor,
          textColor: AppColors.secondaryColor,
          numText: "\$ 5,000",
          quarterTurns: 2,
          text: "Income",
        ),
        CustomContainer(
          iconColor: AppColors.primaryColor,
          numColor: AppColors.primaryColor,
          textColor: AppColors.primaryColor,
          numText: "\$ 1000",
          quarterTurns: 4,
          text: "Expense",
        ),
      ],
    );
  }
}
