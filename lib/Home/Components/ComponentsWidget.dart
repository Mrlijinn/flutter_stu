import 'package:flutter/material.dart';

class JDMaterialComponentsWidget extends StatelessWidget {
  const JDMaterialComponentsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MetrailComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          ListItemWidget(title: "FlotingActionButton", page: FloatingActionButtonDemo()),
          ListItemWidget(title: "ButtonItemDemo", page: ButtonItemDemo()),
        ],
      ),
    );
  }
}

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

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonItemDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        color: Colors.grey[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
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
              ],
            ),
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

// List item
class ListItemWidget extends StatelessWidget {
  const ListItemWidget({Key? key, required this.title, required this.page}) : super(key: key);
  final String title;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
