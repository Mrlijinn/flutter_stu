import 'package:flutter/material.dart';
import '../../model/post.dart';

class JDListView extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int idx) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[idx].imageUrl),
          SizedBox(height: 16.0,),
          Text(
            posts[idx].title,
            style: Theme
                .of(context)
                .textTheme
                .headline6,
          ),
          Text(
            posts[idx].author,
            style: Theme
                .of(context)
                .textTheme
                .subtitle1,
          ),
          SizedBox(height: 16.0,),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}