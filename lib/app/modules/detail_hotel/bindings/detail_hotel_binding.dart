import 'package:get/get.dart';

import '../controllers/detail_hotel_controller.dart';

class DetailHotelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailHotelController>(
      () => DetailHotelController(),
    );
  }
}
