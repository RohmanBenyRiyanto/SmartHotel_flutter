import 'package:get/get.dart';

import '../controllers/myscan_controller.dart';

class MyscanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyscanController>(
      () => MyscanController(),
    );
  }
}
