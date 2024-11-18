import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/colors/app_colors.dart';
import '../../../widgets/custom_text.dart';

class FrstChildInCard extends StatelessWidget {
  const FrstChildInCard(
      {super.key,
      required this.firstNumber,
      required this.quarterTurns,
      required this.assetPerson});
  final String firstNumber;
  final int quarterTurns;
  final String assetPerson;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          // radius: 30,
          backgroundImage: AssetImage(assetPerson),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            RotatedBox(
              quarterTurns: quarterTurns,
              child: const Icon(
                Icons.arrow_outward_outlined,
                color: AppColors.primaryColor,
                size: 30,
              ),
            ),
            SizedBox(height: 10.h),
            CustomText(
              text: firstNumber,
              color: AppColors.primaryColor,
              fontSize: 20.w,
              fontWeight: FontWeight.w600,
            )
          ],
        )
      ],
    );
  }
}
