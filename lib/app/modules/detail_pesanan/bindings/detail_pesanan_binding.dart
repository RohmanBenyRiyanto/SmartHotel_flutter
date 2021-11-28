import 'package:get/get.dart';

import '../controllers/detail_pesanan_controller.dart';

class DetailPesananBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailPesananController>(
      () => DetailPesananController(),
    );
  }
}
