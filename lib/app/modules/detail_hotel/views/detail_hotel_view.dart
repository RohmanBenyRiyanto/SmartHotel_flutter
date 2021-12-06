import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smart_hotel/app/modules/detail_pesanan/views/detail_pesanan_view.dart';
import 'package:smart_hotel/app/modules/pesankamar/views/pesankamar_view.dart';
import 'package:smart_hotel/app/theme/color.dart';

import '../controllers/detail_hotel_controller.dart';
import '../widgets/detail_pembayaran.dart';

class DetailHotelView extends GetView<DetailHotelController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Image(
              image: AssetImage('assets/images/hotel_two.png'),
            ),
          ),
          Positioned(
              top: 250,
              right: 10,
              left: 10,
              child: Card(
                  child: SizedBox(
                height: 90,
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Smotel Pancoran',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                  ),
                  // leading: Icon(Icons.location_on_outlined, size: 40,),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on_outlined,
                          size: 20,
                          color: Colors.indigo[300],
                        ),
                        Text(
                          'Jakarta Selatan',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.indigo[300],
                              fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                  ),
                  trailing: SizedBox(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            'Rp 390.000',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w800),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Wrap(
                            alignment: WrapAlignment.end,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.yellow[700],
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.yellow[700],
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.yellow[700],
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.yellow[700],
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.yellow[700],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ))),
          Positioned(
            top: 360,
            right: 10,
            left: 10,
            child: Text(
              "Fasilitas",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              title: Text(''), // You can add title here
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.grey[900]),
                onPressed: () => Get.back(),
              ),
              backgroundColor:
                  Colors.blue.withOpacity(0), //You can make this transparent
              elevation: 0.0, //No shadow
            ),
          ),
          Positioned(
            top: 0.0,
            left: 300.0,
            right: 0.0,
            child: AppBar(
              title: Text(''), // You can add title here
              leading: IconButton(
                icon: Icon(Icons.favorite, color: Colors.pink[700]),
                onPressed: () {},
              ),
              backgroundColor:
                  Colors.blue.withOpacity(0), //You can make this transparent
              elevation: 0.0, //No shadow
            ),
          ),
          Positioned(
              top: 390,
              right: 10,
              left: 10,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.bed_outlined,
                        size: 30,
                        color: Colors.indigo[300],
                      ),
                      Icon(
                        Icons.ac_unit,
                        size: 30,
                        color: Colors.indigo[300],
                      ),
                      Icon(
                        Icons.network_wifi_sharp,
                        size: 30,
                        color: Colors.indigo[300],
                      ),
                      Icon(
                        Icons.tv,
                        size: 30,
                        color: Colors.indigo[300],
                      ),
                    ],
                  ),
                ],
              )),
          Positioned(
              top: 435,
              right: 10,
              left: 10,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ' ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Ekstra Bed',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'AC',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Wi-Fi',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'TV-LED',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              )),
          Positioned(
            top: 480,
            right: 10,
            left: 10,
            child: Text(
              "Ulasan Teratas",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
          ),
          Positioned(
            top: 500,
            right: 10,
            left: 10,
            child: Card(
              child: SizedBox(
                height: 120,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/hotel_two.png'),
                    radius: 30,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Si Ayu',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                  ),
                  // leading: Icon(Icons.location_on_outlined, size: 40,),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Wrap(
                      children: <Widget>[
                        Text(
                          'Hotelnya mantap beut dah',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.indigo[300],
                              fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                  ),
                  trailing: Wrap(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.yellow[700],
                      ),
                      Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.yellow[700],
                      ),
                      Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.yellow[700],
                      ),
                      Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.yellow[700],
                      ),
                      Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.yellow[700],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SizedBox(
          // width: 80,
          // height: 45,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: color_main,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              print('test');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PesankamarView()),
              );
            },
            child: Text(
              "Booking",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
