import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../signup/view/widgets/custom_text_form_field.dart';
import '../../../widgets/custom_button.dart';

class BodyTransferPage extends StatelessWidget {
  BodyTransferPage({super.key});
  final GlobalKey<FormState> formState2 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Form(
            key: formState2,
            child: Column(
              children: [
                const CustomTextFormField(
                  labelText: 'Sender’s Account No.',
                  suffixIcon: Icons.check_circle,
                ),
                const CustomTextFormField(
                  labelText: 'Amount of Transfer Request',
                ),
                const CustomTextFormField(
                  labelText: 'Requestee’s Name',
                ),
                SizedBox(
                  height: 25.h,
                ),
                CustomButton(
                  height: 60.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 65.w, vertical: 10.h),
                  onPressed: () {
                    // Get.toNamed(AppRoutes.profileRoute);
                  },
                  text: "Send",
                  margin: EdgeInsets.only(top: 40.h),
                ),
              ],
            )),
      ),
    );
  }
}
