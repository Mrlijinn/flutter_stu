import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  const StateManagementDemo({Key? key}) : super(key: key);
  @override
  _StateManagementDemoState createState() => _StateManagementDemoState();
}
class _StateManagementDemoState extends State<StateManagementDemo> {
  int _count = 0;
  void _increaseCount() {
    setState(() {
      _count++;
      debugPrint(_count.toString());
    });
  }
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      count: _count,
      increaseCount:
      _increaseCount,
      child: Scaffold(
        appBar: AppBar(
          title: Text('StateManagementDemo'),
          elevation: 0.0,
        ),
        body: CounterWrapper(),
        floatingActionButton: FloatingActionButton(
          onPressed: _increaseCount,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
class CounterWrapper extends StatelessWidget {
  CounterWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter(),
    );
  }
}
class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int count = CounterProvider.of(context)!.count;
    final VoidCallback increaseCount = CounterProvider.of(context)!.increaseCount;
    return Center(
      child: ActionChip(
        label: Text('count: $count'),
        onPressed: increaseCount,
      ),
    );
  }
}

class CounterProvider extends InheritedWidget {
  final int count;
  final VoidCallback increaseCount;
  final Widget child;

  CounterProvider({
    required this.count,
    required this.increaseCount,
    required this.child,
  }) : super(child: child);

  static CounterProvider? of(BuildContext buildContext) => buildContext.dependOnInheritedWidgetOfExactType(aspect: CounterProvider);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }


}


class StateManagementDemo_less extends StatelessWidget {
  StateManagementDemo_less({Key? key}) : super(key: key);
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManagement'),
        elevation: 0.0,
      ),
      body: Center(
        child: Chip(
          label: Text('$_count'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _count+=1;
          debugPrint(_count.toString());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
