import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:smart_hotel/bottom_bar/fixfloatingbutton.dart';
import 'package:smart_hotel/my_flutter_app_icons.dart';
import 'package:smart_hotel/app/theme/color.dart';

// import 'package:smart_hotel/Profile/profile.dart';
// import 'package:smart_hotel/home/home.dart';
// import 'package:smart_hotel/my_room/my_room.dart';
// import 'package:smart_hotel/sign/forgot_password/search_account.dart';
// import 'package:smart_hotel/sign/sign_in/sign_in.dart';

// class BottomNaviBar extends StatefulWidget {
//   static String routeName = "/bottom_navi_bar";

//   @override
//   _BottomNaviBarState createState() => _BottomNaviBarState();
// }

class BottomNaviBar extends GetView {
  // int currentIndex = 0;
  // final List<Widget> body = [
  //   Home(),
  //   SignIn(),
  //   MyRoom(),
  //   profile(),
  // ];
  @override
  Widget build(BuildContext context) {
    final bool showFab = MediaQuery.of(context).viewInsets.bottom == 0.0;
    return Scaffold(
      // extendBody: true,
      // body: SafeArea(
      //   child: body[currentIndex],
      //   bottom: false,
      // ),
      floatingActionButtonLocation: const FixedCenterDockedFabLocation(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: color_main,
        onPressed: () {
          //kemana floatbutton mau pergi
          showDialog(
            context: context,
            builder: (BuildContext context) => _buildPopupDialog(context),
          );
        },
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
              label: 'History',
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
              label: 'My Room',
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
          // currentIndex: currentIndex,
          selectedItemColor: color_main,
          unselectedItemColor: color_abu,
          // onTap: onTap,
        ),
      ),
    );
  }

  // void onTap(int index) {
  //   setState(() {
  //     currentIndex = index;
  //   });
  // }
}

//Pop Up
Widget _buildPopupDialog(BuildContext context) {
  return AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    title: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'No Kamar',
              style: TextStyle(
                  color: color_main,
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            const Text(
              '230',
              style: TextStyle(
                  color: color_main,
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 230,
          height: 230,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('assets/images/qr_code.png'),
                fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Silahkan melakukan scanning\npada pintu kamar Anda',
          style: TextStyle(
            color: color_main,
            fontFamily: 'Poppins',
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 38,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: color_white,
                  backgroundColor: color_orange,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    'Tutup',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
      ],
    ),
  );
}
