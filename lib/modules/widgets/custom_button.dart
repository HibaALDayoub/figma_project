import 'package:flutter/material.dart';

import '../../core/constant/colors/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.height,
      this.margin,
      required this.text,
      required this.onPressed,
      this.padding});
  final double? height;
  final EdgeInsetsGeometry? margin;
  final void Function() onPressed;
  final String text;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.only(bottom: 60),
      height: height ?? 60,
      child: MaterialButton(
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 60),
        textColor: Colors.white,
        onPressed: onPressed,
        color: AppColors.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Text(
          text,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
