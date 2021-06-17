import 'package:flutter/material.dart';

class JDExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;
  JDExpansionPanelItem({
    required this.headerText,
    required this.body,
    required this.isExpanded,
  });
}

class JDExpansionPanelWidget extends StatefulWidget {
  const JDExpansionPanelWidget({Key? key}) : super(key: key);

  @override
  _JDExpansionPanelWidgetState createState() => _JDExpansionPanelWidgetState();
}

class _JDExpansionPanelWidgetState extends State<JDExpansionPanelWidget> {
  late List<JDExpansionPanelItem> _expansionPanelItems;

  @override
  void initState() {
    super.initState();
    _expansionPanelItems = <JDExpansionPanelItem>[
      JDExpansionPanelItem(
        headerText: 'Panel A',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content For Panel A'),
        ),
        isExpanded: false,
      ),
      JDExpansionPanelItem(
        headerText: 'Panel B',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content For Panel B'),
        ),
        isExpanded: false,
      ),
      JDExpansionPanelItem(
        headerText: 'Panel C',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content For Panel C'),
        ),
        isExpanded: false,
      ),
    ];
  }

  _expansionCallBack(int panelIndex, bool isExpanded) {
    setState(() {
      _expansionPanelItems[panelIndex].isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanel'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ExpansionPanelList(
              children: _expansionPanelItems.map((item) =>
                  ExpansionPanel(headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        item.headerText,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    );
                  }, body: item.body, isExpanded: item.isExpanded)
              ).toList(),
              expansionCallback: _expansionCallBack,
            ),
          ],
        ),
      ),
    );
  }
}
//
// [
// ExpansionPanel(
// headerBuilder: (BuildContext context, bool isExpanded) {
// return Container(
// padding: EdgeInsets.all(16.0),
// child: Text('Panel A', style: Theme.of(context).textTheme.headline6,),
// );
// },
// body: Container(
// padding: EdgeInsets.all(16.0),
// width: double.infinity,
// child: Text('Content For Panel A'),
// ),
// isExpanded: _isExpanded,
// ),
// ]