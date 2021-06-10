import 'package:flutter/material.dart';

class JDNavigatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _buttonOnPressed(String title) {
      // Navigator.of(context).push(
      //     MaterialPageRoute(builder: (BuildContext context) => PageWidget(title: title)),
      // );
      Navigator.pushNamed(context, title);
    }
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => _buttonOnPressed('/home'),
              child: Text('Home'),
            ),
            TextButton(
              onPressed: () => _buttonOnPressed('/about'),
              child: Text('About'),
            ),
          ],
        ),
      ),
    );
  }
}
class PageWidget extends StatelessWidget {
  final String title;
  const PageWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
