import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'Hello World!!!',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            color: Colors.red,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white
        ),
      ),
    );
  }

}