import 'package:flutter/material.dart';
import 'package:jdpay/model/post.dart';

class JDCardWidget extends StatefulWidget {
  const JDCardWidget({Key? key}) : super(key: key);

  @override
  _JDCardWidgetState createState() => _JDCardWidgetState();
}

class _JDCardWidgetState extends State<JDCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JDCardWidget'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: posts.map((post) =>
              Card(
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 16/9,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(4.0), topRight: Radius.circular(4.0)),
                        child: Image.network(post.imageUrl, fit: BoxFit.cover,),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(post.imageUrl),
                      ),
                      title: Text(post.title),
                      subtitle: Text(post.author),
                    ),
                    Container(
                      padding: EdgeInsets.all(16.0),
                      child: Text(post.desc, maxLines: 2, overflow: TextOverflow.ellipsis,),
                    ),
                    ButtonBarTheme(
                      data: ButtonBarThemeData(
                        buttonPadding: EdgeInsets.all(8.0),
                        buttonTextTheme: ButtonTextTheme.primary,
                      ),
                      child: ButtonBar(
                        children: [
                          TextButton(
                            onPressed: (){},
                            child: Text('Like'.toUpperCase()),
                          ),
                          TextButton(
                            onPressed: (){},
                            child: Text('Read'.toUpperCase()),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
          ).toList(),
        ),
      ),
    );
  }
}
