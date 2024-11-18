import 'package:get/get.dart';

import '../controller/exchange_rate_controller.dart';

class ExchangeRateBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ExchangeRateController());
  }
}
