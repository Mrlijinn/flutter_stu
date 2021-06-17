import 'package:flutter/material.dart';
import 'dart:async';

class JDAlertWidget extends StatefulWidget {
  const JDAlertWidget({Key? key}) : super(key: key);

  @override
  _JDAlertWidgetState createState() => _JDAlertWidgetState();
}

class _JDAlertWidgetState extends State<JDAlertWidget> {
  String _choiseValue = 'Nothing';

  Future<void> _elevatedButtonTapAction() async {
    // debugPrint('elevated button tap action');
    var value = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext buildContext) {
        return AlertDialog(
          title: Text('Alert Dialog'),
          content: Text('Are You Sure?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(buildContext, 'Cancel');
              },
              child: Text('Canecl'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(buildContext, 'Ok');
              },
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
    if (value == null) return;
    setState(() {
      _choiseValue = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Chiose is: $_choiseValue'),
              ],
            ),
            SizedBox(height: 32.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _elevatedButtonTapAction,
                  child: Text('ElevatedButton'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
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
