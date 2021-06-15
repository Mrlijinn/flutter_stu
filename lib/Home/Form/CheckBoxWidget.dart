import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool _checkBox01State = false;
  int _radioGroupA = 0;
  void _handlRadioValueChange(int? value) {
    setState(() {
      _radioGroupA = value!;
    });
  }
  @override
  Widget build(BuildContext context) {
    final Widget SimpleCheckBoxDemo01 = Checkbox(
      onChanged: (bool? value){
        setState(() {
          _checkBox01State = value!;
        });
      },
      value: _checkBox01State,
      activeColor: Colors.black26,
    );
    final Widget SimpleRadioRow = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Radio(
          value: 0,
          groupValue: _radioGroupA,
          onChanged: _handlRadioValueChange,
          activeColor: Colors.red,
        ),
        Radio(
          value: 1,
          groupValue: _radioGroupA,
          onChanged: _handlRadioValueChange,
          activeColor: Colors.red,
        ),
      ],
    );
    final Widget CheckboxListTileDemo01 = CheckboxListTile(
      value: _checkBox01State,
      title: Text('Checkbox Item A'),
      subtitle: Text('Description'),
      secondary: Icon(Icons.add),
      selected: _checkBox01State,
      onChanged: (value) {
        setState(() {
          _checkBox01State = value!;
        });
      },
      activeColor: Colors.redAccent,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBoxWidget'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CheckboxListTileDemo01,
            Text('_RadioGroupValue: ${_radioGroupA}'),
            SizedBox(height: 32.0,),
            RadioListTile(
              value: 0,
              groupValue: _radioGroupA,
              onChanged: _handlRadioValueChange,
              title: Text('Radio A'),
              subtitle: Text('Radio A subTitle'),
              secondary: Icon(Icons.bookmark),
              selected: _radioGroupA == 0,
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioGroupA,
              onChanged: _handlRadioValueChange,
              title: Text('Radio B'),
              subtitle: Text('Radio B subTitle'),
              secondary: Icon(Icons.bookmark),
              selected: _radioGroupA == 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              ],
            ),
          ],
        ),
      ),
    );
  }
}

