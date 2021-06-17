import 'package:flutter/material.dart';
import '../../model/post.dart';

class JDDataTableWidget extends StatefulWidget {
  const JDDataTableWidget({Key? key}) : super(key: key);

  @override
  _JDDataTableWidgetState createState() => _JDDataTableWidgetState();
}

class _JDDataTableWidgetState extends State<JDDataTableWidget> {
  final _staticDemoListView = ListView(
    children: [
      DataTable(
        columns: [
          DataColumn(label: Text('Title')),
          DataColumn(label: Text('Author')),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Text('Hello!'),),
              DataCell(Text('Lijinn'),),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Hello~'),),
              DataCell(Text('Lijino'),),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Hello?'),),
              DataCell(Text('Lijins'),),
            ],
          ),
        ],
      ),
    ],
  );
  int _sortColumIndex = 0;
  bool _sortAscending = false;

  @override
  Widget build(BuildContext context) {
    final Widget _dynamicDataListView = ListView(
      children: [
        DataTable(
          sortColumnIndex: _sortColumIndex,
          sortAscending: _sortAscending,
          // onSelectAll: (bool? value) {
          //
          // },
          columns: [
            DataColumn(
              label: Text('title'),
              onSort: (int index, bool ascending) {
                setState(() {
                  _sortColumIndex = index;
                  _sortAscending = ascending;
                  posts.sort((a, b) {
                    if (!ascending) {
                      final c = a;
                      a = b;
                      b = c;
                    }
                    return a.title.length.compareTo(b.title.length);
                  });
                });
              },
            ),
            DataColumn(
              label: Text('Author'),
            ),
            DataColumn(
              label: Text('Image'),
            ),
          ],
          rows: posts.map((post) =>
              DataRow(
                selected: post.selected,
                onSelectChanged: (bool? value) {
                  setState(() {
                    if (post.selected != value) {
                      post.selected = value!;
                    }
                  });
                },
                cells: [
                DataCell(Text(post.title)),
                DataCell(Text(post.author)),
                DataCell(Image.network(post.imageUrl)),
                ],
              )
          ).toList(),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('JDDataTableWidget'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: _dynamicDataListView,
      ),
    );
  }
}
