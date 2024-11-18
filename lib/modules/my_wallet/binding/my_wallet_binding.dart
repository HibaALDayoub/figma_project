import 'package:get/get.dart';

import '../controller/my_wallet_controller.dart';

class MyWalletBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MyWalletController());
  }
}
