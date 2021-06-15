import 'package:flutter/material.dart';
import 'JDButtonItemDemo.dart';

class JDMaterialComponentsWidget extends StatelessWidget {
  const JDMaterialComponentsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MetrailComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          ListItemWidget(title: "FlotingActionButton", page: FloatingActionButtonDemo()),
          ListItemWidget(title: "ButtonItemDemo", page: ButtonItemDemo()),
        ],
      ),
    );
  }
}

// List item
class ListItemWidget extends StatelessWidget {
  const ListItemWidget({Key? key, required this.title, required this.page}) : super(key: key);
  final String title;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
