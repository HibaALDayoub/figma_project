import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

double getResponsiveHeight(double height) {
  if (Get.context!.isLandscape) {
    return height.w;
  } else {
    return height.h;
  }
}

double getResponsiveWidth(double width) {
  if (Get.context!.isLandscape) {
    return width.h;
  } else {
    return width.w;
  }
}
