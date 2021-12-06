import 'package:flutter/material.dart';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:smart_hotel/app/theme/color.dart';
import 'package:smart_hotel/app/theme/const.dart';
import 'package:smart_hotel/app/theme/my_flutter_app_icons.dart';

import '../widgets/cek_in.dart';
import '../widgets/cek_out.dart';
import '../widgets/detail_succes_content.dart';

// void main() => runApp(MyApp());

// // class MyHomePage extends StatefulWidget {
// //   MyHomePage({Key Key, this.title}) : super(key: Key);

// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// class MyApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: detail_hotel(),

//     );
//   }
// }

class detail_hotel_konfirmasi extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color_main,
      appBar: AppBar(
        backgroundColor: color_main,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 35.0),
          child: Text(
            "Konfirmasi Pesanan",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        // action : IconButton(
        //   icon: Icon(Icons.favorite_border),
        //   onPressed: () {
        //     // Navigator.pop(context);
        //   },
        // ),
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(Icons.favorite_border),
        //     onPressed: () {},
        //   ),
        // ],
      ),
      body: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: detail_succes_content.length,
        itemBuilder: (BuildContext context, int index) {
          DetailSuccesContent detailsuccescontents =
              detail_succes_content[index];
          return Container(
            margin:
                EdgeInsets.symmetric(vertical: KPadding, horizontal: KPadding),
            height: 600,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: color_white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 16,
                  left: 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 131,
                        width: 123,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 4.0,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(
                                width: 131,
                                height: 131,
                                image:
                                    AssetImage(detailsuccescontents.imageAsset),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: KPadding),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              detailsuccescontents.name,
                              style: TextStyle(
                                color: color_black,
                                fontFamily: 'Poppins',
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                height: 1.3,
                                letterSpacing: 1,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  detailsuccescontents.SvgAssets,
                                  width: 11,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    detailsuccescontents.location,
                                    style: TextStyle(
                                      color: color_abu,
                                      fontFamily: 'Poppins',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 171,
                  left: 16,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Id Pemesanan',
                        style: TextStyle(
                          color: color_purple,
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        detailsuccescontents.IdPemesanan,
                        style: TextStyle(
                          color: color_purple,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                CekIn(
                  labelText: 'Check In',
                  tanggal: detailsuccescontents.CheckInTgl,
                  bln_thn: detailsuccescontents.CheckInDate,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    border: Border.all(color: color_main, width: 1.5),
                  ),
                ),
                CekOut(
                  labelText: 'Check Out',
                  tanggal: detailsuccescontents.CheckOuttTgl,
                  bln_thn: detailsuccescontents.CheckOuDate,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    border: Border.all(color: color_main, width: 1.5),
                  ),
                ),
                Positioned(
                  top: 266,
                  left: 239,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/svg/ic_org.svg'),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            detailsuccescontents.Orang + ' Org',
                            style: TextStyle(
                                color: color_purple,
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/svg/ic_bed.svg'),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            detailsuccescontents.Bed + ' Bed',
                            style: TextStyle(
                                color: color_purple,
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 350,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: KPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tipe Kamar',
                              style: TextStyle(
                                color: color_purple,
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              detailsuccescontents.TipeKamar,
                              style: TextStyle(
                                color: color_purple,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 114,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Tipe Kamar',
                                style: TextStyle(
                                  color: color_purple,
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                detailsuccescontents.NoKamar,
                                style: TextStyle(
                                  color: color_purple,
                                  fontFamily: 'Poppins',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //Line Dash Horizontal
                Container(
                  //margin untuk posisi :v
                  margin: EdgeInsets.only(top: 422),
                  child: DottedLine(
                    direction: Axis.horizontal,
                    lineLength: double.infinity,
                    lineThickness: 1.2,
                    dashLength: 4.0,
                    dashColor: color_grey,
                    dashRadius: 0.0,
                    dashGapLength: 4.0,
                    dashGapColor: Colors.transparent,
                    dashGapRadius: 0.0,
                  ),
                ),
                Positioned(
                  top: 445,
                  left: 10,
                  right: 10,
                  child: Center(
                    child: SizedBox(
                      width: 340,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 16, right: 5),
                          child: Wrap(
                            children: [
                              Center(
                                child: Text(
                                  'Silahkan bayar maksimal 3 jam dari waktu checkout anda, atau pesanan akan otomatis  dibatalkan',
                                  style: TextStyle(
                                    color: Colors.blueAccent[400],
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 525,
                  left: 10,
                  right: 10,
                  child: Center(
                    child: SizedBox(
                      width: 200,
                      height: 45,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: color_orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Ke Pembayaran",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
