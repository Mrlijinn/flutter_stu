import 'package:flutter/material.dart';

class JDSliderBaseWidget extends StatefulWidget {
  const JDSliderBaseWidget({Key? key}) : super(key: key);

  @override
  _JDSliderBaseWidgetState createState() => _JDSliderBaseWidgetState();
}

class _JDSliderBaseWidgetState extends State<JDSliderBaseWidget> {
  double _sliderValueValueA = 0.0;
  @override
  Widget build(BuildContext context) {
    final Widget SimpleSliderDemoRow = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 32.0,),

        Slider(
          value: _sliderValueValueA,
          onChanged: (value) {
            setState(() {
              _sliderValueValueA = value;
            });
          },
          activeColor: Colors.green,
          inactiveColor: Colors.blueGrey.withOpacity(0.3),
          min: 0.0,
          max: 10.0,
          divisions: 10,
          label: '${_sliderValueValueA.toInt()}',
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Widget'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Slider Value: ${_sliderValueValueA}'),
            SizedBox(height: 16.0,),
            SimpleSliderDemoRow,
          ],
        ),
      ),
    );
  }
}
