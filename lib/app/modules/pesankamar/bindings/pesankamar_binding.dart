import 'package:get/get.dart';

import '../controllers/pesankamar_controller.dart';

class PesankamarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PesankamarController>(
      () => PesankamarController(),
    );
  }
}
