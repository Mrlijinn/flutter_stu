import 'package:flutter/material.dart';

class JDSwitchBaseWidgetDemo extends StatefulWidget {
  const JDSwitchBaseWidgetDemo({Key? key}) : super(key: key);

  @override
  _JDSwitchBaseWidgetDemoState createState() => _JDSwitchBaseWidgetDemoState();
}

class _JDSwitchBaseWidgetDemoState extends State<JDSwitchBaseWidgetDemo> {
  bool _switchStateValue = false;
  @override
  Widget build(BuildContext context) {
    final Widget SimpleSwitchRow = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Switch State ${_switchStateValue ? '😁' : '😿'}', style: TextStyle(
          color: Colors.green,
          fontSize: 18.0,
        ),),
        SizedBox(width: 16.0,),
        Switch(
          value: _switchStateValue,
          activeColor: Colors.red,
          onChanged: (bool value) {
            setState(() {
              _switchStateValue = value;
            });
          },
        ),
      ],
    );
    final Widget SwitchListTileDemo = SwitchListTile(
      value: _switchStateValue,
      onChanged: (bool? value) {
        setState(() {
          _switchStateValue = value!;
        });
      },
      activeColor: Colors.redAccent,
      selected: _switchStateValue,
      title: Text('Switch List Tile Title'),
      subtitle: Text('SubTitle'),
      secondary: Icon(Icons.bookmark_add),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Demo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SimpleSwitchRow,
            SwitchListTileDemo,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              ],
            )
          ],
        ),
      ),
    );
  }
}
