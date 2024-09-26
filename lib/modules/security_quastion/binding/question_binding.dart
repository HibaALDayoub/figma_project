import 'package:figma_proj/modules/security_quastion/controller/question_controller.dart';
import 'package:get/get.dart';

class QuestionBinding implements Bindings {
  @override
  void dependencies() {
    Get.put((QuestionController()));
  }
}
