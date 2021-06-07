import 'package:flutter/material.dart';
import 'JDListView.dart';
class JDBottomNavigationBar extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _JDBottomNavigationBarState1();
  }
}

class _JDBottomNavigationBarState extends State<JDBottomNavigationBar> {
  int _currentIndex = 0;
  List<Widget> list = [];
  @override
  void initState() {
    // TODO: implement initState
    list..add(Text('data1111111', style: TextStyle(fontSize: 26.0, color: Colors.green),))..add(Text("data222222"))..add(JDListView());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        fixedColor: Colors.red.shade500,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class _JDBottomNavigationBarState1 extends State<JDBottomNavigationBar> {
  int _currentIndex = 0;
  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.red.shade500,
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'History',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'List',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Person',
        ),
      ],
    );
  }
}