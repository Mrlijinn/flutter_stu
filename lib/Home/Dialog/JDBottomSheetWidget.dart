import 'package:flutter/material.dart';
import 'dart:async';

class JDBottomSheetWidget extends StatefulWidget {
  const JDBottomSheetWidget({Key? key}) : super(key: key);

  @override
  _JDBottomSheetWidgetState createState() => _JDBottomSheetWidgetState();
}

class _JDBottomSheetWidgetState extends State<JDBottomSheetWidget> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();
  String _bottomSheetChoiseValue = 'Nothing';

  Future<void> _textButtonTapAction() async {
    _bottomSheetScaffoldKey.currentState!.showBottomSheet((BuildContext context) => BottomAppBar(
      child: Container(
        height: 90.0,
        width: double.infinity,
        child: Row(
          children: [
            Icon(Icons.pause_circle_outline),
            SizedBox(width: 16.0,),
            Text('01:30 / 03:30'),
            Expanded(
              child: Text(
                'Fix you - Coldplay',
                textAlign: TextAlign.right,
                style: TextStyle(backgroundColor: Colors.redAccent),
              ),
            ),
          ],
        ),
      ),
    ));
  }
  Future<void> _moduleActionSheetAction() async {

    var value = await showModalBottomSheet(context: context, builder: (BuildContext context) {
      return Container(
        height: 200.0,
        child: Column(
          children: [
            ListTile(
              title: Text('Option A'),
              onTap: () {
                Navigator.pop(context, 'A');
              },
            ),
            ListTile(
              title: Text('Option B'),
              onTap: () {
                Navigator.pop(context, 'B');
              },
            ),
            ListTile(
              title: Text('Option C'),
              onTap: () {
                Navigator.pop(context, 'C');
              },
            ),
          ],
        ),
      );
    });
    if (value == null) return;
    setState(() {
      _bottomSheetChoiseValue = value as String;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('JDBottomSheetWidget'),
        elevation: 0.0,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Bottom Sheet Choise Value: $_bottomSheetChoiseValue'),
              ],
            ),
            SizedBox(height: 32.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: _textButtonTapAction,
                  child: Text('show bottom sheet'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.indigo),
                  ),
                ),
                SizedBox(width: 32.0,),
                TextButton(
                  onPressed: _moduleActionSheetAction,
                  child: Text('module bottom sheet'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.indigo),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
