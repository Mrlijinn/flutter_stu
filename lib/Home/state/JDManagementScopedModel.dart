import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class StateManagementScopedModelDemo extends StatelessWidget {
  const StateManagementScopedModelDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: CounterModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('StateManagementDemo'),
          elevation: 0.0,
        ),
        body: CounterScopedWrapper(),
        floatingActionButton: ScopedModelDescendant<CounterModel>(
          rebuildOnChange: false,
          builder: (context, _, model) => FloatingActionButton(
          onPressed: model.increaseCount,
          child: Icon(Icons.add),
        ),
      ),
    ));
  }
}

class CounterScopedWrapper extends StatelessWidget {
  CounterScopedWrapper({Key? key}) : super(key: key);

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
    return ScopedModelDescendant<CounterModel>(
      builder: (context, _, model) => ActionChip(
        label: Text('count: ${model.count}'),
        onPressed: model.increaseCount,
      ),
    );
  }
}

class CounterModel extends Model {
  int _count = 0;
  int get count => _count;

  void increaseCount() {
    _count += 1;
    notifyListeners();
  }
}