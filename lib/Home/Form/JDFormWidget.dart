import 'package:flutter/material.dart';

class JDFormWidget extends StatelessWidget {
  const JDFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Theme(
      //   data: ThemeData(
      //     primaryColor: Colors.grey[100]!,
      //   ),
      //   child: ThemeDemo(),
      // ),
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.yellow,
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // JDTextFieldWidget(),
              RegisterFormWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterFormWidget extends StatefulWidget {
  const RegisterFormWidget({Key? key}) : super(key: key);

  @override
  _RegisterFormWidgetState createState() => _RegisterFormWidgetState();
}

class _RegisterFormWidgetState extends State<RegisterFormWidget> {
  final registerFormKey = GlobalKey<FormState>();
  late String username;
  late String password;
  String username_placeholder = 'Username: ';

  void _submitRegisterForm() {
    if (registerFormKey.currentState!.validate()) {
      setState(() {
        username_placeholder = "Username: ";
      });
      registerFormKey.currentState!.save();
      debugPrint('username: ${username}, password: ${password}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Registering'))
      );
    } else {
      setState(() {
        username_placeholder = "Reusername: ";
      });
    }

  }

  String? _validateUserName(String? username) {
    if (username!.isEmpty) {
      return 'Username is required';
    }
    return null;
  }

  String? _validatePassword(String? password) {
    if (password!.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: username_placeholder,
              helperText: '',
            ),
            onSaved: (value){
              username = value!;
            },
            validator: _validateUserName,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password: ',
              helperText: '',
            ),
            onSaved: (value) {
              password = value!;
            },
            validator: _validatePassword,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          SizedBox(height: 32.0,),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                // backgroundColor: MaterialStateProperty.all(Theme.of(context).accentColor),
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.focused) && !states.contains(MaterialState.pressed)) {
                    return Colors.blue;
                  } else if (states.contains(MaterialState.pressed)) {
                    return Theme.of(context).primaryColor;
                  }
                  return Colors.grey[400];
                }),
                elevation: MaterialStateProperty.all(0.0),
              ),
              onPressed: _submitRegisterForm,
              child: Text('Register',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


// TextField Test
class JDTextFieldWidget extends StatefulWidget {
  const JDTextFieldWidget({Key? key}) : super(key: key);

  @override
  _JDTextFieldWidgetState createState() => _JDTextFieldWidgetState();
}

class _JDTextFieldWidgetState extends State<JDTextFieldWidget> {
  final textEditingController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.text = 'Hi';
    textEditingController.addListener(() {
      debugPrint("input textEditingController: ${textEditingController.text}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      // onChanged: (value) {
      //   debugPrint('input: ${value}');
      // },
      controller: textEditingController,
      onSubmitted: (value) {
        debugPrint("submit: ${value}");
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Title',
        hintText: "Enter the post title",
        // border: InputBorder.none,
        // border: OutlineInputBorder(),
        filled: true,
        // fillColor: Theme.of(context).accentColor,
      ),
    );
  }
}


class ThemeDemo extends StatelessWidget {
  const ThemeDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
