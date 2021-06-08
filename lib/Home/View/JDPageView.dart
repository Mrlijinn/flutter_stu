import 'package:flutter/material.dart';

class PageViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      allowImplicitScrolling: false,
      children: [
        Container(
          color: Colors.grey[400],
          alignment: Alignment(0.0, 0.0),
          child: Text('ONE PAGE', style: TextStyle(fontSize: 32.0, color: Colors.white),),
        ),
        Container(
          color: Colors.cyanAccent[400],
          alignment: Alignment(0.0, 0.0),
          child: Text('TWO PAGE', style: TextStyle(fontSize: 32.0, color: Colors.white),),
        ),
        Container(
          color: Colors.orangeAccent[400],
          alignment: Alignment(0.0, 0.0),
          child: Text('THREE PAGE', style: TextStyle(fontSize: 32.0, color: Colors.white),),
        ),
        Container(
          color: Colors.blueGrey[400],
          alignment: Alignment(0.0, 0.0),
          child: Text('FORE PAGE', style: TextStyle(fontSize: 32.0, color: Colors.white),),
        ),
      ],
    );
  }
}




