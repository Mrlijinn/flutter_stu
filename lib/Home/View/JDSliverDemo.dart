import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // title: Text('Hello World'),
            // pinned: true,             // navi悬浮顶部
            floating: true,               // navi 上滑隐藏, 下滑显示
            expandedHeight: 178.0,      // navi 伸展高度
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Lijin Flutter'.toUpperCase(),
                style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              background: Image.network('https://tenfei03.cfp.cn/creative/vcg/800/version23/VCG2196f32bca8.jpg', fit: BoxFit.cover,),
            ),
          ),
          SliverSafeArea(     // navi与tab高度 安全区域
            sliver: SliverPadding(  // 没有padding属性, 需要使用该widget支撑内边距
              padding: EdgeInsets.all(16.0),
              sliver: JDSliverListWidget(),
            ),
          ),
        ],
      ),
    );
  }
}

class JDSliverListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 32.0),
            child: Material(
              borderRadius: BorderRadius.circular(12.0),
              elevation: 14.0,
              shadowColor: Colors.grey.withOpacity(0.5),
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16/9,
                    child: Image.network(
                      posts[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 32.0,
                    left: 32.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          posts[index].title,
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white
                          ),
                        ),
                        Text(
                          posts[index].author,
                          style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}


class JDSliverGridWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
            child: Image.network(posts[index].imageUrl, fit: BoxFit.cover,),
          );
        },
        childCount: posts.length,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        childAspectRatio: 1.5,
      ),
    );
  }
}