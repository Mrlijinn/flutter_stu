import 'package:flutter/material.dart';
import 'model/post.dart';

void main() => runApp(APP());

class APP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}

class Home extends StatelessWidget {
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
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            posts[idx].author,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 16.0,),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("首页"),
        elevation: 10.0,
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'Hello World!!!',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.red,
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.white
        ),
      ),
    );
  }
  
}