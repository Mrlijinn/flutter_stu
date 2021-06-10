import 'package:flutter/material.dart';
import '../../model/post.dart';

class PostDetailWidget extends StatelessWidget {
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.title}'),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Image.network(this.post.imageUrl),
          Container(
            padding: EdgeInsets.all(32.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${post.title}', style: Theme.of(context).textTheme.headline6,),
                Text('${post.author}', style: Theme.of(context).textTheme.subtitle1,),
                SizedBox(height: 32.0,),
                Text('${post.desc}', style: Theme.of(context).textTheme.subtitle1,),
              ],
            ),
          ),
        ],
      ),
    );
  }

  PostDetailWidget({required this.post});
}
