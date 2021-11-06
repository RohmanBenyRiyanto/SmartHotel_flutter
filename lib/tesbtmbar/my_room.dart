import 'package:flutter/material.dart';

class MyRoom extends StatelessWidget {
  const MyRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('test bottom bar'),),
      body: Center(
        child: Text('My Room'),
      ),
    );
  }
}