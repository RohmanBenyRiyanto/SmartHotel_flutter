import 'package:get/get.dart';

import 'package:smart_hotel/app/modules/detail_hotel/bindings/detail_hotel_binding.dart';
import 'package:smart_hotel/app/modules/detail_hotel/views/detail_hotel_view.dart';
import 'package:smart_hotel/app/modules/detail_pesanan/bindings/detail_pesanan_binding.dart';
import 'package:smart_hotel/app/modules/detail_pesanan/views/detail_pesanan_view.dart';
import 'package:smart_hotel/app/modules/forgetpassword/bindings/forgetpassword_binding.dart';
import 'package:smart_hotel/app/modules/forgetpassword/views/forgetpassword_view.dart';
import 'package:smart_hotel/app/modules/home/bindings/home_binding.dart';
import 'package:smart_hotel/app/modules/home/views/home_view.dart';
import 'package:smart_hotel/app/modules/my_room/bindings/my_room_binding.dart';
import 'package:smart_hotel/app/modules/my_room/views/my_room_view.dart';
import 'package:smart_hotel/app/modules/profile/bindings/profile_binding.dart';
import 'package:smart_hotel/app/modules/profile/views/profile_view.dart';
import 'package:smart_hotel/app/modules/signin/bindings/signin_binding.dart';
import 'package:smart_hotel/app/modules/signin/views/signin_view.dart';
import 'package:smart_hotel/app/modules/signup/bindings/signup_binding.dart';
import 'package:smart_hotel/app/modules/signup/views/signup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MY_ROOM,
      page: () => MyRoomView(),
      binding: MyRoomBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_HOTEL,
      page: () => DetailHotelView(),
      binding: DetailHotelBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PESANAN,
      page: () => DetailPesananView(),
      binding: DetailPesananBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.FORGETPASSWORD,
      page: () => ForgetpasswordView(),
      binding: ForgetpasswordBinding(),
    ),
  ];
}
