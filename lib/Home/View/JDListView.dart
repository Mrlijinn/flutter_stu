import 'package:flutter/material.dart';
import '../../model/post.dart';
import 'PostDetail.dart';

class JDListView extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int idx) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      // child: Column(
      //   children: <Widget>[
      //     Image.network(posts[idx].imageUrl),
      //     SizedBox(height: 16.0,),
      //     Text(
      //       posts[idx].title,
      //       style: Theme
      //           .of(context)
      //           .textTheme
      //           .headline6,
      //     ),
      //     Text(
      //       posts[idx].author,
      //       style: Theme
      //           .of(context)
      //           .textTheme
      //           .subtitle1,
      //     ),
      //     SizedBox(height: 16.0,),
      //   ],
      // ),
      child: Stack(
        children: [
          Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(posts[idx].imageUrl, fit: BoxFit.cover,),
              ),
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
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: () {
                  String title = posts[idx].title;
                  debugPrint("$title");
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PostDetailWidget(post: posts[idx]))
                  );
                },
              ),
            ),
          ),
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