import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../splash/view/widgets/two_overlapping_circles.dart';

class AuthOverLappingCircles extends StatelessWidget {
  const AuthOverLappingCircles({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50.h),
      child: TwoOverlappingCircles(
        left: 35.w,
        heightContainer: 85.h,
        heightCircle: 60.h,
        widthCircle: 60.w,
        widthContainer: 160.w,
      ),
    );
  }
}
