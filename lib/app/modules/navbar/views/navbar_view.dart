import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:smart_hotel/app/modules/navbar/widgets/alert_dialog.dart';
import 'package:smart_hotel/app/modules/navbar/widgets/fixfloatingbutton.dart';
import 'package:smart_hotel/app/theme/color.dart';
import 'package:smart_hotel/app/theme/my_flutter_app_icons.dart';

import '../controllers/navbar_controller.dart';

class NavbarView extends GetView<NavbarController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Obx(
        () => controller.myWidgets.elementAt(controller.indexWidget.value),
      ),
      floatingActionButtonLocation: const FixedCenterDockedFabLocation(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: color_main,
        onPressed: () {
          Get.dialog(QrDialog());
        },
        tooltip: 'Scan',
        child: Icon(MyFlutterApp.ic_qrcode, size: 32),
        elevation: 0,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 50,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 4,
        color: color_white,
        child: BottomNavigationBar(
          onTap: (value) => controller.changeIndexBottomNav(value),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.ic_home,
                color: color_abu,
                size: 24.0,
              ),
              // ignore: deprecated_member_use
              label: 'Home',
              activeIcon: Icon(
                MyFlutterApp.ic_home,
                size: 24.0,
                color: color_main,
              ),
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(right: 20),
                child: Icon(
                  MyFlutterApp.ic_history,
                  color: color_abu,
                  size: 18.0,
                ),
              ),
              label: 'History       ',
              activeIcon: Container(
                margin: EdgeInsets.only(right: 20),
                child: Icon(
                  MyFlutterApp.ic_history,
                  size: 18.0,
                  color: color_main,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(left: 20),
                child: Icon(
                  MyFlutterApp.ic_myroom,
                  color: color_abu,
                  size: 16.0,
                ),
              ),
              label: '        My Room',
              activeIcon: Container(
                margin: EdgeInsets.only(left: 20),
                child: Icon(
                  MyFlutterApp.ic_myroom,
                  size: 16.0,
                  color: color_main,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.ic_profile,
                color: color_abu,
                size: 20.0,
              ),
              label: 'Profile',
              activeIcon: Icon(
                MyFlutterApp.ic_profile,
                size: 20.0,
                color: color_main,
              ),
            ),
          ],
          backgroundColor: color_white,
          selectedItemColor: color_main,
          unselectedItemColor: color_abu,
        ),
      ),
    );
  }
}
