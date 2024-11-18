import 'package:get/get.dart';

import '../../main/controller/main_controller.dart';
import '../../home/controller/home_controller.dart';
import '../../splash/controller/splash_controller.dart';
class MainBinding extends Bindings{
 @override
  void dependencies() {
 Get.put(HomeController());
    Get.put(MainController());
    // Get.put(FilterController());
  }
}