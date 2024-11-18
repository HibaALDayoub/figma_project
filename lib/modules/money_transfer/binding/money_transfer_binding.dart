import 'package:figma_proj/modules/money_transfer/controller/money_transfer_controller.dart';
import 'package:get/get.dart';

class MoneyTransferBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MoneyTransferController());
  }
}
