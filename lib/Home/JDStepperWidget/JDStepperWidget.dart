import 'package:flutter/material.dart';

class JDStepperWidget extends StatefulWidget {
  const JDStepperWidget({Key? key}) : super(key: key);

  @override
  _JDStepperWidgetState createState() => _JDStepperWidgetState();
}

class _JDStepperWidgetState extends State<JDStepperWidget> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JDStepperWidget'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Theme(data: Theme.of(context).copyWith(
                primaryColor: Colors.black26
            ), child:
            Stepper(
              currentStep: _currentStep,
              onStepTapped: (int value) {
                setState(() {
                  _currentStep = value;
                });
              },
              onStepContinue: () {
                setState(() {
                  _currentStep < 2 ? _currentStep++ : _currentStep=0;
                });
              },
              onStepCancel: () {
                setState(() {
                  _currentStep > 0 ? _currentStep-- : _currentStep=2;
                });
              },
              steps: [
                Step(
                  title: Text('Login'),
                  content: Text('Magna Exercitation Duis Non Sint Eu Nostrud.'),
                  subtitle: Text('Login first'),
                  isActive: _currentStep == 0,
                ),
                Step(
                  title: Text('Choise Plan'),
                  content: Text('Magna Exercitation Duis Non Sint Eu Nostrud.'),
                  subtitle: Text('Choise Your Plan'),
                  isActive: _currentStep == 1,
                ),
                Step(
                  title: Text('Confirm Payment'),
                  content: Text('Magna Exercitation Duis Non Sint Eu Nostrud.'),
                  subtitle: Text('Confirm Your Duis Non Sint Eu Nostrud'),
                  isActive: _currentStep == 2,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
