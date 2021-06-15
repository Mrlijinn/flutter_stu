import 'package:flutter/material.dart';

class ButtonItemDemo extends StatelessWidget {
  const ButtonItemDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget FlatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {debugPrint('');},
          child: Text('Button'),
          style: ButtonStyle(
            splashFactory: InkSplash.splashFactory,
            backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
            foregroundColor: MaterialStateProperty.all(Colors.yellow),
            overlayColor: MaterialStateProperty.all(Colors.red),
          ),
        ),
        TextButton.icon(
          onPressed: () {debugPrint('');},
          style: ButtonStyle(
            splashFactory: InkSplash.splashFactory,
            backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
            foregroundColor: MaterialStateProperty.all(Colors.yellow),
            overlayColor: MaterialStateProperty.all(Colors.red),
          ),
          icon: Icon(Icons.add),
          label: Text('111'),
        ),
      ],
    );
    final Widget EvevatedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Theme(
          data: Theme.of(context).copyWith(
            // buttonColor: Theme.of(context).accentColor,
              buttonColor: Colors.brown,
              buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              )
          ),
          child: ElevatedButton(
            onPressed: () {debugPrint('');},
            child: Text('Button'),
            style: ButtonStyle(
              splashFactory: InkSplash.splashFactory,
              // backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
              // foregroundColor: MaterialStateProperty.all(Colors.yellow),
              overlayColor: MaterialStateProperty.all(Colors.orangeAccent),
              elevation: MaterialStateProperty.all(0.0),
              shape: MaterialStateProperty.all(StadiumBorder()),
            ),
          ),
        ),

        SizedBox(width: 16.0,),
        ElevatedButton.icon(
          onPressed: () {debugPrint('');},
          style: ButtonStyle(
            splashFactory: InkSplash.splashFactory,
            // backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
            // foregroundColor: MaterialStateProperty.all(Colors.yellow),
            overlayColor: MaterialStateProperty.all(Colors.orangeAccent),
            elevation: MaterialStateProperty.all(16.0),
          ),
          icon: Icon(Icons.add),
          label: Text('111'),
        ),
      ],
    );
    final Widget OutlinedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Theme(
          data: Theme.of(context).copyWith(
            // buttonColor: Theme.of(context).accentColor,
              buttonColor: Colors.brown,
              buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              )
          ),
          child: OutlinedButton(
            onPressed: () {debugPrint('');},
            child: Text('Button'),
            style: ButtonStyle(
              splashFactory: InkSplash.splashFactory,
              // backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
              foregroundColor: MaterialStateProperty.all(Colors.yellow),
              overlayColor: MaterialStateProperty.all(Colors.orangeAccent),
              elevation: MaterialStateProperty.all(0.0),
              shape: MaterialStateProperty.all(StadiumBorder()),
              side: MaterialStateProperty.all(BorderSide(color: Colors.lightGreen,)),
            ),
          ),
        ),
        SizedBox(width: 16.0,),
        OutlinedButton.icon(
          onPressed: () {debugPrint('');},
          style: ButtonStyle(
            splashFactory: InkSplash.splashFactory,
            // backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
            // foregroundColor: MaterialStateProperty.all(Colors.yellow),
            overlayColor: MaterialStateProperty.all(Colors.orangeAccent),
            elevation: MaterialStateProperty.all(16.0),
          ),
          icon: Icon(Icons.add),
          label: Text('111'),
        ),
      ],
    );
    final Widget FixedWidthBox = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 180.0,
          child: OutlinedButton(
            onPressed: () {debugPrint('');},
            child: Text('Button'),
            style: ButtonStyle(
              splashFactory: InkSplash.splashFactory,
              // backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
              foregroundColor: MaterialStateProperty.all(Colors.orangeAccent),
              overlayColor: MaterialStateProperty.all(Colors.blueGrey),
              elevation: MaterialStateProperty.all(0.0),
              shape: MaterialStateProperty.all(StadiumBorder()),
              side: MaterialStateProperty.all(BorderSide(color: Colors.lightGreen,)),

            ),
          ),
        )
      ],
    );
    final Widget ExpandedBox = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 7,
          child: OutlinedButton(
            onPressed: () {debugPrint('');},
            child: Text('Button'),
            style: ButtonStyle(
              splashFactory: InkSplash.splashFactory,
              // backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
              foregroundColor: MaterialStateProperty.all(Colors.orangeAccent),
              overlayColor: MaterialStateProperty.all(Colors.blueGrey),
              elevation: MaterialStateProperty.all(0.0),
              shape: MaterialStateProperty.all(StadiumBorder()),
              side: MaterialStateProperty.all(BorderSide(color: Colors.lightGreen,)),
            ),
          ),
        ),
        SizedBox(width: 16,),
        Expanded(
          flex: 3,
          child: OutlinedButton(
            onPressed: () {debugPrint('');},
            child: Text('Button'),
            style: ButtonStyle(
              splashFactory: InkSplash.splashFactory,
              // backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
              foregroundColor: MaterialStateProperty.all(Colors.orangeAccent),
              overlayColor: MaterialStateProperty.all(Colors.blueGrey),
              elevation: MaterialStateProperty.all(0.0),
              shape: MaterialStateProperty.all(StadiumBorder()),
              side: MaterialStateProperty.all(BorderSide(color: Colors.lightGreen,)),
            ),
          ),
        ),
      ],
    );
    final Widget ButtonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
            ),
          ),
          child: ButtonBar(
            children: [
              OutlinedButton(
                onPressed: () {
                  debugPrint('aaa');
                },
                child: Text("Button"),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.green),
                  backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
                  // fixedSize:MaterialStateProperty.all(Size(150, 120)),
                  side: MaterialStateProperty.all(BorderSide(color: Colors.lightGreen,)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12)))),
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  debugPrint('aaa');
                },
                child: Text("Button"),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.green),
                  backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
                  // fixedSize:MaterialStateProperty.all(Size(150, 120)),
                  side: MaterialStateProperty.all(BorderSide(color: Colors.lightGreen,)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12)))),
                ),
              ),
            ],
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonItemDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButtonDemo,
            EvevatedButtonDemo,
            OutlinedButtonDemo,
            FixedWidthBox,
            ExpandedBox,
            ButtonBarDemo,
          ],
        ),
      ),
    );
  }
}

// FloatingActionButton
class FloatingActionButtonDemo extends StatelessWidget {
  FloatingActionButtonDemo({Key? key}) : super(key: key);

  final Widget _floatingActionButton = FloatingActionButton(
    onPressed: () {

    },
    child: Icon(Icons.swipe),
    elevation: 0.0,
    backgroundColor: Colors.black26,
    // 变成方形按钮
    // shape: BeveledRectangleBorder(
    //   borderRadius: BorderRadius.circular(10.0),
    // ),
  );

  final Widget _floatingActionButtonExtened = FloatingActionButton.extended(
    onPressed: () {debugPrint('111');},
    label: Text('add'),
    icon: Icon(Icons.add),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
        backgroundColor: Colors.green,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}