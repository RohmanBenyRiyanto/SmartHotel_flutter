import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:smart_hotel/app/modules/home/views/home_view.dart';
import 'package:smart_hotel/app/modules/my_room/views/my_room_view.dart';
import 'package:smart_hotel/app/modules/profile/views/profile_view.dart';
import 'package:smart_hotel/app/modules/signin/views/signin_view.dart';
import 'package:smart_hotel/app/routes/app_pages.dart';

class NavbarController extends GetxController {
  //TODO: Implement NavbarController

  RxInt indexWidget = 0.obs;

  void changeIndexBottomNav(int index) {
    indexWidget.value = index;
  }

  List<Widget> myWidgets = [
    HomeView(),
    Center(
      child: Text(
        'History',
      ),
    ),
    MyRoomView(),
    ProfileView(),
  ];
}
