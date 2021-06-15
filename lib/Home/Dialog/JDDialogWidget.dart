import 'package:flutter/material.dart';
import 'dart:async';

enum Option {
  A, B, C
}

class JDDialogWidget extends StatefulWidget {
  const JDDialogWidget({Key? key}) : super(key: key);

  @override
  _JDDialogWidgetState createState() => _JDDialogWidgetState();
}

class _JDDialogWidgetState extends State<JDDialogWidget> {
  String _dialogOptionValue = 'Nothing';

  Future<void> _openSimpleDialog() async {
    final option = await showDialog(
      context: context,
      builder: (BuildContext buildContext) {
        return SimpleDialog(
          title: Text('驹驹'),
          children: [
            SimpleDialogOption(
              padding: EdgeInsets.all(16.0),
              onPressed: () {
                Navigator.pop(context, Option.A);
              },
              child: Text('按钮1'),
            ),
            SimpleDialogOption(
              padding: EdgeInsets.all(16.0),
              onPressed: () {
                Navigator.pop(context, Option.B);
              },
              child: Text('按钮2'),
            ),
            SimpleDialogOption(
              padding: EdgeInsets.all(16.0),
              onPressed: () {
                debugPrint('sadsad');
                Navigator.pop(context, Option.C);
              },
              child: Text('按钮3'),
            ),
          ],
        );
      },
    );
    switch (option) {
      case Option.A:
        setState(() {
          _dialogOptionValue = 'A';
        });
        break;
      case Option.B:
        setState(() {
          _dialogOptionValue = 'B';
        });
        break;
      case Option.C:
        setState(() {
          _dialogOptionValue = 'C';
        });
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog Demo'),
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
                Text('Value is: ${_dialogOptionValue}'),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openSimpleDialog,
        child: Icon(Icons.add),
      ),
    );
  }
}
