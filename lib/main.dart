import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constant/app_routes.dart';
import 'core/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: AppTheme.lightsTheme,

      initialRoute: AppRoutes.splashRoute,
      // translations: Localization(), //translation class
      // locale: AppServices.localizationController?.language, //app language
      getPages: routes,
      // initialBinding: AppBindings(),
    );
  }
}
// https://www.figma.com/design/icSwGOzwTYR4nj0BdoeLJs/Transferme-Banking-Financial-Full-APP-Ui-Template-Free-57-plus-screen-(Community)?node-id=0-1066&node-type=frame&t=uZOT1t15b1n4zXmU-0