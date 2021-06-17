import 'package:flutter/material.dart';

class JDChipWidget extends StatefulWidget {
  const JDChipWidget({Key? key}) : super(key: key);

  @override
  _JDChipWidgetState createState() => _JDChipWidgetState();
}

class _JDChipWidgetState extends State<JDChipWidget> {
  List<String> _tags = [
    'Apple',
    'Banana',
    'Lemon',
  ];
  String _action = 'Nothing';
  List<String> _selected = [];
  String _choise = 'Lemon';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipWidget'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                Chip(label: Text('Life')),
                SizedBox(width: 8.0,),
                Chip(
                  label: Text('Sunset'),
                  backgroundColor: Colors.redAccent,
                ),
                Chip(
                  label: Text('Sunset'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('Li'),
                  ),
                ),
                Chip(
                  label: Text('Sunset'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage('https://img1.baidu.com/it/u=725825164,1601438895&fm=26&fmt=auto&gp=0.jpg'),
                    child: Text('Li'),
                  ),
                ),
                Chip(
                  label: Text('Sunset'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage('https://img0.baidu.com/it/u=3641823440,2315557250&fm=26&fmt=auto&gp=0.jpg'),
                    child: Text('Li'),
                  ),
                ),
                Chip(
                  label: Text('City'),
                  onDeleted: () {

                  },
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.blue,
                  deleteButtonTooltipMessage: 'Remove this tag',
                ),

                Divider(
                  color: Colors.red,
                  height: 32.0,
                  indent: 32.0,
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((e) =>
                      Chip(
                        label: Text(e),
                        deleteIcon: Icon(Icons.delete_forever),
                        deleteIconColor: Colors.red,
                        deleteButtonTooltipMessage: 'delete this chip',
                        onDeleted: (){
                          setState(() {
                            _tags.remove(e);
                          });
                        },
                      )
                  ).toList(),
                ),
                /// ActionChip
                Divider(
                  color: Colors.red,
                  height: 32.0,
                  indent: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ActionChip: $_action'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((e) =>
                      ActionChip(
                        label: Text(e),
                        onPressed: () {
                          setState(() {
                            _action = e;
                          });
                        },
                      )
                  ).toList(),
                ),
                /// FilterChip
                Divider(
                  color: Colors.red,
                  height: 32.0,
                  indent: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('FilterChip: ${_selected.toString()}'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((e) =>
                      FilterChip(
                        label: Text(e),
                        selected: _selected.contains(e),
                        onSelected: (bool value) {
                          setState(() {
                            if (_selected.contains(e)) {
                              _selected.remove(e);
                            } else {
                              _selected.add(e);
                            }
                          });
                        },
                      )
                  ).toList(),
                ),
                /// ChoiceChip
                Divider(
                  color: Colors.red,
                  height: 32.0,
                  indent: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ChoiseChip: ${_choise}'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((e) =>
                      ChoiceChip(
                        label: Text(e),
                        selected: _choise == e,
                        selectedColor: Colors.lightGreen,
                        onSelected: (bool value) {
                          setState(() {
                            _choise = e;
                          });
                        },
                      )
                  ).toList(),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _tags = ['Apple', 'Banana', 'Lemon',];
            _selected = [];
            _choise = 'Lemon';
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
