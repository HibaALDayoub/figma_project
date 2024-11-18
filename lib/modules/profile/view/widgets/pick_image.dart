import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors/app_colors.dart';

class PickImage extends StatelessWidget {
  const PickImage(
      {super.key,
      this.left,
      this.top,
      this.bottom,
      this.right,
      this.iconColor,
      this.widthContainer,
      this.heightContainer});
  final double? left;
  final double? top;
  final double? bottom;
  final double? right;
  final double? widthContainer;
  final double? heightContainer;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: widthContainer,
          height: heightContainer,
          child: CircleAvatar(
            radius: 50.r,
            backgroundColor: AppColors.primaryColor,
          ),
        ),
        Positioned(
            left: left,
            top: top,
            bottom: bottom,
            right: right,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.image_search,
                  color: iconColor ?? AppColors.whiteColor,
                  size: 25,
                )))
      ],
    );
  }
}
