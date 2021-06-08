import 'package:flutter/material.dart';

class BasicWidge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://tenfei03.cfp.cn/creative/vcg/800/version23/VCG2196f32bca8.jpg'),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeatY,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.indigoAccent[400]!.withOpacity(0.5), BlendMode.hardLight),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // height: 200.0,
            child: Icon(Icons.pool, size: 32.0, color: Colors.white,),
            // color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              // border: Border(
              //   top: BorderSide(
              //     color: Colors.red,
              //     width: 16.0,
              //     style: BorderStyle.solid,
              //   ),
              //   left: BorderSide(color: Colors.orange, width: 16.0, style: BorderStyle.solid),
              //   right: BorderSide(color: Colors.purple, width: 16.0, style: BorderStyle.solid),
              //   bottom: BorderSide(color: Colors.greenAccent, width: 16.0, style: BorderStyle.solid),
              // )
              border: Border.all(width: 8.0, color: Colors.purple, style: BorderStyle.solid),
              // borderRadius: BorderRadius.all(Radius.circular(26.0)),
              boxShadow: [
                // BoxShadow(color: Colors.red, offset: Offset(20, 20), blurRadius: 3.0, spreadRadius: 6.0),
                // BoxShadow(color: Colors.yellow, offset: Offset(10, 10), blurRadius: 3.0, spreadRadius: 6.0),
                // BoxShadow(color: Colors.blue, offset: Offset(0, 0), blurRadius: 3.0, spreadRadius: 6.0),
              ],
              shape: BoxShape.circle,
              // gradient: RadialGradient(
              //   colors: [
              //     Color.fromRGBO(7, 102, 255, 1.0), Color.fromRGBO(3, 28, 128, 1.0)
              //   ],
              //   stops: [0.4, 0.6],
              // )
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.7],
              )
            ),
          )
        ],
      ),
    );
  }
}

class BasicTextWidge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle _textStyle = TextStyle(
      fontSize: 17.0,
      fontWeight: FontWeight.bold,
    );
    final String _author = '李白';
    final String _title = '将进酒';

    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: [
          Text(
              '<$_title> --$_author\n君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝如青丝暮成雪！人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。岑夫子，丹丘生，将进酒，杯莫停。与君歌一曲，请君为我倾耳听。钟鼓馔玉不足贵，但愿长醉不复醒。古来圣贤皆寂寞，惟有饮者留其名。陈王昔时宴平乐，斗酒十千恣欢谑。主人何为言少钱，径须沽取对君酌。五花马、千金裘，呼儿将出换美酒，与尔同销万古愁！',
            textAlign: TextAlign.left,
            style: _textStyle,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 16,),
          RichText(text: TextSpan(
            text: 'Hello World.net',
            style: TextStyle(
              color: Colors.red,
              fontSize: 34.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100,
            ),
            children: [
              TextSpan(text: 'Hello', style: TextStyle(
                color: Colors.green,
              )),
              TextSpan(text: "Wo", style: TextStyle(
                color: Colors.purple,
                fontSize: 24.0
              ))
            ],
          )),
        ],
      ),
    );
  }
}