import 'package:figma_proj/core/constant/colors/app_colors.dart';
import 'package:figma_proj/core/constant/size/app_size.dart';
import 'package:figma_proj/modules/widgets/custom_button.dart';

import 'package:figma_proj/modules/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../widgets/custom_app_bar.dart';

// https://youtu.be/6br7a-Q5cus?si=5ox6Dx7n7Gj3-NbT
class PinCodePage extends StatelessWidget {
  PinCodePage({super.key});

  final textfield = TextEditingController();

  Widget gridView() {
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30),
      margin: EdgeInsets.only(top: 30, left: 30, right: 30),
      child: GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        children: [
          keyField("1"),
          keyField("2"),
          keyField("3"),
          keyField("4"),
          keyField("5"),
          keyField("6"),
          keyField("7"),
          keyField("8"),
          keyField("9"),
          keyField(""),
      
          keyField(
            "0",
          ),
          keyField(
            "",
          ),
         
        ],
      ),
    );
  }

  Widget keyField(numb) {
    return InkWell(
     
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            border: Border.all(color: AppColors.grey)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              numb,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
  



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            const CustomAppBar(
              text: "Set Pin Code ",
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomText(
              text: "Please set your ownPin Code ",
              fontWeight: FontWeight.w500,
              color: AppColors.grey,
              textAlign: TextAlign.left,
              fontSize: 16,
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomText(
              text: "Set Pin Code (5-digit) ",
              fontWeight: FontWeight.w400,
              color: AppColors.grey,
              textAlign: TextAlign.left,
              fontSize: 13,
            ),
            const SizedBox(
              height: 30,
            ),

            const SizedBox(
              height: 30,
            ),
            // https://youtu.be/Sgj63d1I3Zs?si=TP3Vzt8i0ORNehrZ
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return Container(
                    margin: const EdgeInsets.all(6),
                    width: 17,
                    height: 17,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColors.primaryColor)
                   
                        ),
                  );
                })),

            gridView(),

            SizedBox(
              height: AppSize.screenHeight(context: context) * 0.01,
            ),
            CustomButton(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 10),
              onPressed: () {
                // Get.toNamed(AppRoutes.pinPage);
              },
              text: "Set",
              margin: const EdgeInsets.only(top: 40),
            ),
          ],
        ),
      ),
    ));
  }
}
