import 'package:flutter/material.dart';

import '../../../../core/constant/colors/app_colors.dart';

class TwoOverlappingCircles extends StatelessWidget {
  const TwoOverlappingCircles(
      {super.key,
      this.widthContainer,
      this.widthCircle,
      this.heightContainer,
      this.heightCircle,
      required this.left});
  final double? widthContainer;
  final double? widthCircle;
  final double? heightContainer;
  final double? heightCircle;
  final double left;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthContainer,
      height: heightContainer,
      child: Stack(
        children: [
          Container(
            width: widthCircle,
            height: heightCircle,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColors.primaryColor),
          ),
          Positioned(
            left: left,
            child: Container(
              width: widthCircle,
              height: heightCircle,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColors.secondaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
