import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../model/post.dart';

class PageViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.red,
      child: Image.network(posts[index].imageUrl, fit: BoxFit.cover,),
    );
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      itemCount: posts.length,
      itemBuilder: _itemBuilder,
      padding: EdgeInsets.all(16.0),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        // crossAxisCount: 3,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        maxCrossAxisExtent: 150.0,
      ),
    );
  }
}

class GirdViewExtentDemo extends StatelessWidget {
  List<Widget> _buildItem(int length) {
    return List.generate(length, (int index) {
      return GirdViewItem("item $index");
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      padding: EdgeInsets.all(16.0),
      scrollDirection: Axis.horizontal,
      maxCrossAxisExtent: 150.0,
      children: _buildItem(100),
    );
  }
}

class GridViewDemo extends StatelessWidget {
  List<Widget> _buildTiles(int count) {
    return List.generate(count, (int index){
      return GirdViewItem("I Love Linux: $index");
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(16.0),
      children: _buildTiles(100),
    );
  }
}

class GirdViewItem extends StatelessWidget {
  String value;
  GirdViewItem(this.value) {}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.grey[300],
      alignment: Alignment(0.0, 0.0),
      child: Text(
        this.value,
        style: TextStyle(fontSize: 18.0, color: Colors.grey,),
      ),
    );
  }
}

class PageViewBuilder extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.network(posts[index].imageUrl, fit: BoxFit.cover,),
        ),
        Positioned(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                posts[index].title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              Text(
                posts[index].author,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 19.0,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
          left: 8.0,
          bottom: 8.0,
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      allowImplicitScrolling: false,
      // reverse: true,
      // scrollDirection: Axis.vertical,
      onPageChanged: (_currentPage) => debugPrint('Page: $_currentPage!'),
      controller: PageController(
          initialPage: 1, // 初始显示的页面
          keepPage: false,
          viewportFraction: 0.85
      ),
      children: [
        Container(
          color: Colors.grey[400],
          alignment: Alignment(0.0, 0.0),
          child: Text('ONE PAGE', style: TextStyle(fontSize: 32.0, color: Colors.white),),
        ),
        Container(
          color: Colors.cyanAccent[400],
          alignment: Alignment(0.0, 0.0),
          child: Text('TWO PAGE', style: TextStyle(fontSize: 32.0, color: Colors.white),),
        ),
        Container(
          color: Colors.orangeAccent[400],
          alignment: Alignment(0.0, 0.0),
          child: Text('THREE PAGE', style: TextStyle(fontSize: 32.0, color: Colors.white),),
        ),
        Container(
          color: Colors.blueGrey[400],
          alignment: Alignment(0.0, 0.0),
          child: Text('FORE PAGE', style: TextStyle(fontSize: 32.0, color: Colors.white),),
        ),
      ],
    );
  }
}


