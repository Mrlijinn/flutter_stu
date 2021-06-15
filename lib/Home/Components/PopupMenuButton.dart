import 'package:flutter/material.dart';

class PopUpMenuButtonWidget extends StatefulWidget {
  const PopUpMenuButtonWidget({Key? key}) : super(key: key);

  @override
  _PopUpMenuButtonWidgetState createState() => _PopUpMenuButtonWidgetState();
}

class _PopUpMenuButtonWidgetState extends State<PopUpMenuButtonWidget> {
  String _currentMenuItem = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopUpMenuButton'),
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
                Text(_currentMenuItem),
                PopupMenuButton(
                  onSelected: (value) {
                    print(value);
                    setState(() {
                      _currentMenuItem = value.toString();
                    });
                  },
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem(child: Text('Home'), value: "Home",),
                      PopupMenuItem(child: Text('Discover'), value: "Discover",),
                      PopupMenuItem(child: Text('Community'), value: "Community",),
                    ];
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
