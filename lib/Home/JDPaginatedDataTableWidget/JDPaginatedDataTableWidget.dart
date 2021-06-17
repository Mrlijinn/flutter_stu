import 'package:flutter/material.dart';
import '../../model/post.dart';

class PostDataSource extends DataTableSource {
  final List<Post> _posts = posts;
  int _selectedCount = 0;
  @override
  DataRow? getRow(int index) {
    Post post = _posts[index];
    return DataRow.byIndex(
      index: index,
      selected: false,
      onSelectChanged: (bool? b) {},
      cells: [
        DataCell(Text(post.title)),
        DataCell(Text(post.author)),
        DataCell(Image.network(post.imageUrl)),
      ],
      color: MaterialStateProperty.all(Colors.lightGreen),
    );
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => _posts.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => _selectedCount;

  void _sort(getField(post), bool ascending) {
    _posts.sort((a, b){
      if (!ascending) {
        final c = a;
        a = b;
        b = c;
      }
      final aValue = getField(a);
      final bValue = getField(b);
      return Comparable.compare(aValue, bValue);
    });
    notifyListeners();
  }
}

class JDPaginatedDataTableWidget extends StatefulWidget {
  const JDPaginatedDataTableWidget({Key? key}) : super(key: key);

  @override
  _JDPaginatedDataTableWidgetState createState() => _JDPaginatedDataTableWidgetState();
}

class _JDPaginatedDataTableWidgetState extends State<JDPaginatedDataTableWidget> {
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
  final PostDataSource _postsDataSource = PostDataSource();

  @override
  Widget build(BuildContext context) {
    final Widget _dynamicDataListView = ListView(
      children: [
        PaginatedDataTable(
          header: Text('Posts'),
          source: _postsDataSource,
          rowsPerPage: 5, /// 每一页行数
          sortColumnIndex: _sortColumIndex,
          sortAscending: _sortAscending,
          // onSelectAll: (bool? value) {
          //
          // },
          columns: [
            DataColumn(
              label: Text('title'),
              onSort: (int columIndex, bool ascending) {
                _postsDataSource._sort((post) => post.title.length, ascending);
                setState(() {
                  _sortColumIndex = columIndex;
                  _sortAscending = ascending;
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