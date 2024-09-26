import 'package:figma_proj/core/constant/colors/app_colors.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(15),
        color: AppColors.primaryColor.withOpacity(0.2),
      ),
      child: const TextField(
        minLines: 4,
        maxLines: 9,
        style: TextStyle(),
        textAlign: TextAlign.left,
        decoration: InputDecoration(
            hintText: "Write your answer here...",
            hintStyle: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 15,
                fontWeight: FontWeight.w500),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}
