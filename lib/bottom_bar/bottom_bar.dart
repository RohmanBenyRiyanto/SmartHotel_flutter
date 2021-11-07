import 'package:flutter/material.dart';
import 'package:smart_hotel/Profile/profile.dart';
import 'package:smart_hotel/bottom_bar/fixfloatingbutton.dart';
import 'package:smart_hotel/home/home.dart';
import 'package:smart_hotel/my_flutter_app_icons.dart';
import 'package:smart_hotel/sign/forgot_password/search_account.dart';
import 'package:smart_hotel/sign/sign_in/sign_in.dart';
import 'package:smart_hotel/tesbtmbar/history.dart';
import 'package:smart_hotel/tesbtmbar/my_room.dart';
import 'package:smart_hotel/tesbtmbar/scan.dart';
import 'package:smart_hotel/theme/color.dart';

class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({Key? key}) : super(key: key);

  @override
  _BottomNaviBarState createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  int currentIndex = 0;
  final List<Widget> body = [
    Home(),
    SignIn(),
    SearchAccount(),
    profile(),
  ];
  @override
  Widget build(BuildContext context) {
    final bool showFab = MediaQuery.of(context).viewInsets.bottom == 0.0;
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: body[currentIndex],
        bottom: false,
      ),
      floatingActionButtonLocation: const FixedCenterDockedFabLocation(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: color_main,
        onPressed: () {},
        // pop jika tampilan scan sudah di buat
        // onPressed: () => Navigator.of(context).pop(),
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
          currentIndex: currentIndex,
          selectedItemColor: color_main,
          unselectedItemColor: color_abu,
          onTap: onTap,
        ),
      ),
    );
  }

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
