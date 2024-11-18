import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/main_controller.dart';
import '../widgets/custom_bottom_navigationbar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavicationBar(),
      body: GetBuilder<MainController>(
        builder: (controller) {
          return controller.mainWidgets.elementAt(controller.selectedIndex);
        },
      ),
    );
  }
}
