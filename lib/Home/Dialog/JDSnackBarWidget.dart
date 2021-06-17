import 'package:flutter/material.dart';
import 'dart:async';

class JDSnackBarWidget extends StatefulWidget {
  const JDSnackBarWidget({Key? key}) : super(key: key);

  @override
  _JDSnackBarWidgetState createState() => _JDSnackBarWidgetState();
}

class _JDSnackBarWidgetState extends State<JDSnackBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
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
                SnackBarButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SnackBarButton extends StatelessWidget {
  const SnackBarButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Processing'),
            action: SnackBarAction(
              label: 'OK',
              onPressed: () {
                
              },
            ),
          ),
        );
      },
      child: Text('Open SnackBar'),
    );
  }
}
