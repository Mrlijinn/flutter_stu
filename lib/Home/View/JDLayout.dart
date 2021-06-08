import 'package:flutter/material.dart';

class JDLayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.grey[400]!,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 200.0,
            ),
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          ),
        ],
      ),
    );
  }
}

class AspectDemoWidge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(
      aspectRatio: 16.0/9.0,
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class StackDemoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return Container(
    //   color: Colors.grey[400]!,
    //
    // );
    return Container(
      color: Colors.grey[400]!,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              SizedBox(
                width: 200.0,
                height: 300.0,
                child: Container(
                  // alignment: Alignment(-0.5, .5),
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              // SizedBox(height: 32.0,),
              SizedBox(
                width: 80.0,
                height: 80.0,
                child: Container(
                  alignment: Alignment(0.0, 0.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(130, 54, 255, 1.0),
                    // borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(107, 12, 255, 1.0),
                        Color.fromRGBO(103, 154, 255, 1.0),
                      ],
                    ),
                  ),
                  child: Icon(Icons.brightness_2, color: Colors.white, size: 32.0,),
                ),
              ),
              Positioned(
                right: 20.0,
                top: 20.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0,),
              ),
              Positioned(
                right: 60.0,
                top: 50.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0,),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;
  IconBadge(this.icon, {
    this.size = 32.0
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(this.icon, size: this.size,color: Colors.white,),
      width: this.size + 60,
      height: this.size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}