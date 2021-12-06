import 'package:flutter/material.dart';

import 'package:flutter_switch/flutter_switch.dart';
import 'package:getwidget/getwidget.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class BodyAc extends StatefulWidget {
  BodyAc({Key? key}) : super(key: key);

  @override
  State<BodyAc> createState() => _BodyAcState();
}

class _BodyAcState extends State<BodyAc> {
  static String routeName = "/AC";
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter < 32 ? _counter++ : _counter = _counter;
    });
  }

  void _decrementcrementCounter() {
    setState(() {
      _counter != 0 ? _counter-- : _counter = _counter;
    });
  }

  bool isSwitched = false;
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Positioned(
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(left: 95.0),
              child: Text('AC',
                  style: TextStyle(
                    color: Colors.blueAccent,
                  )),
            ), // You can add title here
            leading: new IconButton(
              icon: new Icon(
                Icons.arrow_back,
                color: Colors.blueAccent,
              ),
              onPressed: () {},
            ),
            backgroundColor:
                Colors.blue.withOpacity(0), //You can make this transparent
            elevation: 0.0, //No shadow
          ),
        ),
        Positioned(
          top: 120,
          right: 0,
          left: 0,
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.add),
                  color: isSwitched ? Colors.orange[700] : Colors.grey[400],
                  onPressed: _incrementCounter,
                ),
                SleekCircularSlider(
                  appearance: CircularSliderAppearance(
                    size: 200,
                    customColors: CustomSliderColors(
                      progressBarColor:
                          isSwitched ? Colors.orange[700] : Colors.grey[400],
                      trackColor: Colors.grey[400],
                      dotColor:
                          isSwitched ? Colors.greenAccent : Colors.grey[400],
                    ),
                    customWidths: CustomSliderWidths(
                      progressBarWidth: 20,
                      trackWidth: 20,
                      shadowWidth: 10,
                    ),
                    infoProperties: InfoProperties(
                        mainLabelStyle: TextStyle(
                            fontSize: 60,
                            color: isSwitched
                                ? Colors.orange[700]
                                : Colors.grey[400],
                            fontWeight: FontWeight.bold),
                        modifier: (double value) {
                          _counter = value.toInt();
                          return '${_counter}˚C';
                        }),
                  ),
                  min: 0,
                  max: 32,
                  initialValue: isSwitched ? _counter.toDouble() : 0,
                ),
                IconButton(
                  icon: Icon(
                    Icons.remove,
                  ),
                  color: isSwitched ? Colors.orange[700] : Colors.grey[400],
                  onPressed: _decrementcrementCounter,
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 285,
          right: 10,
          left: 10,
          child: Column(
            children: [
              FlutterSwitch(
                width: 80.0,
                height: 35.0,
                valueFontSize: 15.0,
                toggleSize: 25.0,
                value: isSwitched,
                borderRadius: 30.0,
                padding: 4.0,
                showOnOff: true,
                activeColor: Color.fromRGBO(47, 221, 146, 1),
                onToggle: (val) {
                  setState(() {
                    isSwitched = val;
                  });
                },
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      isSwitched ? "Click to turn Off" : "Click to turn on",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
          top: 420,
          right: 0,
          left: 0,
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            child: GFCard(
                content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: [
                    GFRadio(
                      type: GFRadioType.custom,
                      activeIcon: Icon(Icons.ac_unit,
                          color: isSwitched ? Colors.white : Colors.grey[400]),
                      radioColor: Colors.red,
                      size: GFSize.LARGE,
                      activeBgColor:
                          isSwitched ? GFColors.WARNING : GFColors.LIGHT,
                      inactiveBorderColor: GFColors.LIGHT,
                      activeBorderColor:
                          isSwitched ? GFColors.SUCCESS : GFColors.LIGHT,
                      value: 8,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = 8;
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "Cool",
                        style: TextStyle(fontSize: 15, color: Colors.grey[400]),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GFRadio(
                      type: GFRadioType.custom,
                      activeIcon: Icon(Icons.wb_sunny,
                          color: isSwitched ? Colors.white : Colors.grey[400]),
                      radioColor: Colors.red,
                      size: GFSize.LARGE,
                      activeBgColor:
                          isSwitched ? GFColors.WARNING : GFColors.LIGHT,
                      inactiveBorderColor: GFColors.LIGHT,
                      activeBorderColor:
                          isSwitched ? GFColors.SUCCESS : GFColors.LIGHT,
                      value: 10,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = 10;
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "Heat",
                        style: TextStyle(fontSize: 15, color: Colors.grey[400]),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GFRadio(
                      type: GFRadioType.custom,
                      activeIcon: Icon(Icons.waves_outlined,
                          color: isSwitched ? Colors.white : Colors.grey[400]),
                      radioColor: Colors.red,
                      size: GFSize.LARGE,
                      activeBgColor:
                          isSwitched ? GFColors.WARNING : GFColors.LIGHT,
                      inactiveBorderColor: GFColors.LIGHT,
                      activeBorderColor:
                          isSwitched ? GFColors.SUCCESS : GFColors.LIGHT,
                      value: 12,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = 12;
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "Fan",
                        style: TextStyle(fontSize: 15, color: Colors.grey[400]),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GFRadio(
                      type: GFRadioType.custom,
                      activeIcon: Icon(Icons.hdr_auto_outlined,
                          color: isSwitched ? Colors.white : Colors.grey[400]),
                      radioColor: Colors.red,
                      size: GFSize.LARGE,
                      activeBgColor:
                          isSwitched ? GFColors.WARNING : GFColors.LIGHT,
                      inactiveBorderColor: GFColors.LIGHT,
                      activeBorderColor:
                          isSwitched ? GFColors.SUCCESS : GFColors.LIGHT,
                      value: 25,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = 25;
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "Auto",
                        style: TextStyle(fontSize: 15, color: Colors.grey[400]),
                      ),
                    ),
                  ],
                ),
              ],
            )),
          ),
        )
      ]),
    );
  }
}
