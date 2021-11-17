import 'package:get/get.dart';

import '../controllers/forgetpassword_controller.dart';

class ForgetpasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgetpasswordController>(
      () => ForgetpasswordController(),
    );
  }
}
