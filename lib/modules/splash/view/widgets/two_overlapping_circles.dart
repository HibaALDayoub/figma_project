import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors/app_colors.dart';

class TwoOverlappingCircles extends StatelessWidget {
  const TwoOverlappingCircles(
      {super.key,
      this.widthContainer,
      this.widthCircle,
      this.heightContainer,
      this.heightCircle,
      required this.left,
      this.padding});
  final double? widthContainer;
  final double? widthCircle;
  final double? heightContainer;
  final double? heightCircle;
  final double left;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: widthContainer,
      height: heightContainer,
      child: Stack(
        children: [
          Container(
            width: widthCircle,
            height: heightCircle,
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(50.r),
                shape: BoxShape.circle,
                color: AppColors.primaryColor),
          ),
          Positioned(
            left: left,
            child: Container(
              width: widthCircle,
              height: heightCircle,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,

                  // borderRadius: BorderRadius.circular(50.r),
                  color: AppColors.secondaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
