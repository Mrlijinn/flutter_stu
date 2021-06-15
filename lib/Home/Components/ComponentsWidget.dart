import 'package:flutter/material.dart';
import 'JDButtonItemDemo.dart';
import 'PopupMenuButton.dart';
import '../Form/JDFormWidget.dart';
import '../Form/CheckBoxWidget.dart';
import '../Form/JDSwitchBaseWidget.dart';
import '../Form/JDSliderBaseWidget.dart';
import '../Form/JDDateTimeBaseWidget.dart';
import '../Dialog/JDDialogWidget.dart';

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
          ListItemWidget(title: "JDDialogWidget", page: JDDialogWidget()),
          ListItemWidget(title: "JDDateTimeWidget", page: JDDateTimeBaseWidget()),
          ListItemWidget(title: "SliderWidget", page: JDSliderBaseWidget()),
          ListItemWidget(title: "SwitchWidget", page: JDSwitchBaseWidgetDemo()),
          ListItemWidget(title: "CheckBoxWidget", page: CheckBoxWidget()),
          ListItemWidget(title: "FormWidget", page: JDFormWidget()),
          ListItemWidget(title: "FlotingActionButton", page: FloatingActionButtonDemo()),
          ListItemWidget(title: "ButtonItemDemo", page: ButtonItemDemo()),
          ListItemWidget(title: "PopupMenuButtonDemo", page: PopUpMenuButtonWidget()),
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
