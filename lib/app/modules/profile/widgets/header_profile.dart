import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'content_profile.dart';
import 'package:smart_hotel/app/modules/my_room/widgets/content_myroom.dart';
import 'package:smart_hotel/app/modules/my_room/widgets/hotel_services.dart';
import 'package:smart_hotel/app/theme/color.dart';
import 'package:smart_hotel/app/theme/const.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color_white,
      // body: ListView.builder(
      //   physics: const NeverScrollableScrollPhysics(),
      //   itemCount: profiledata.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     ProfileData profiledatas = profiledata[index];
      //     return Column(
      //       children: [
      //         Container(
      //           height: 263,
      //           width: MediaQuery.of(context).size.width,
      //           child: Stack(
      //             children: <Widget>[
      //               Positioned(
      //                 top: 0,
      //                 left: 0,
      //                 child: Container(
      //                   height: 187,
      //                   width: MediaQuery.of(context).size.width,
      //                   decoration: BoxDecoration(
      //                     gradient: LinearGradient(
      //                       begin: Alignment.topCenter,
      //                       end: Alignment.bottomCenter,
      //                       colors: [color_main, color_blue],
      //                     ),
      //                   ),
      //                   child: null,
      //                 ),
      //               ),
      //               new Positioned(
      //                   top: 130,
      //                   child: Container(
      //                     width: MediaQuery.of(context).size.width,
      //                     child: new Row(
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       children: [
      //                         CircleAvatar(
      //                           radius: 65,
      //                           backgroundColor: color_grey,
      //                           child: CircleAvatar(
      //                             radius: 60,
      //                             backgroundImage:
      //                                 AssetImage('assets/images/logo.png'),
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   )),
      //             ],
      //           ),
      //         ),
      //         SizedBox(
      //           height: 5,
      //         ),
      //         // hotel_services(),
      //       ],
      //     );
      //   },
      // ),
    );
  }
}
