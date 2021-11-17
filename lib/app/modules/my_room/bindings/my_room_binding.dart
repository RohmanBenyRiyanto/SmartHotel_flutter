import 'package:get/get.dart';

import '../controllers/my_room_controller.dart';

class MyRoomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyRoomController>(
      () => MyRoomController(),
    );
  }
}
