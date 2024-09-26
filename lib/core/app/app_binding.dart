import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    // to injection the crud class from the start of the application work
    Get.put(HttpMethods());
  }
}

class HttpMethods {}
