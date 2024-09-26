import 'package:figma_proj/modules/pin_code/controller/question_controller.dart';
import 'package:get/get.dart';

class PinCodeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put((PinCodeController()));
  }
}
