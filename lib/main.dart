import 'package:flutter/material.dart';
import 'Home/View/JDListView.dart';
import 'Home/View/Hello.dart';
import 'Home/View/JDBottomNavigationBar.dart';
import 'Home/View/JDBasicWidge.dart';

void main() => runApp(APP());

class APP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.red,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   tooltip: 'Navigation',
            //   onPressed: () => debugPrint('Navigation Button is pressed'),
            // ),
            title: Text("首页"),
            actions: <Widget>[
              IconButton(
                  onPressed: () => debugPrint('Search Button is pressed'),
                  tooltip: 'Search',
                  icon: Icon(Icons.search)
              )
            ],
            elevation: 10.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: [
                Tab(icon: Icon(Icons.local_florist),),
                Tab(icon: Icon(Icons.change_history),),
                Tab(icon: Icon(Icons.directions_bike),),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              JDListView(),
              // Icon(Icons.change_history, size: 128.0, color: Colors.black12,),
              BasicWidge(),
              Icon(Icons.directions_bike, size: 128.0, color: Colors.black12,),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                // DrawerHeader(
                //   child: Text('Header'.toUpperCase()),
                //   decoration: BoxDecoration(
                //     color: Colors.grey[100],
                //   ),
                // ),
                UserAccountsDrawerHeader(
                    accountName: Text('Lijin', style: TextStyle(fontWeight: FontWeight.bold),),
                    accountEmail: Text('lijin743.jd.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage('https://img0.baidu.com/it/u=3101694723,748884042&fm=26&fmt=auto&gp=0.jpg'),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red[400],
                      image: DecorationImage(
                        image: NetworkImage('https://img2.baidu.com/it/u=1234940918,4035050611&fm=26&fmt=auto&gp=0.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.red.shade400.withOpacity(0.6),
                            BlendMode.hardLight
                        ),
                      )
                    ),
                ),
                ListTile(
                  title: Text('Messages', textAlign: TextAlign.right,),
                  trailing: Icon(Icons.message, color: Colors.black12,size: 22.0,),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  title: Text('Favorite', textAlign: TextAlign.right,),
                  trailing: Icon(Icons.favorite, color: Colors.black12,size: 22.0,),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  title: Text('Settings', textAlign: TextAlign.right,),
                  trailing: Icon(Icons.settings, color: Colors.black12,size: 22.0,),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),

          ),
          bottomNavigationBar: JDBottomNavigationBar(),
        ),
    );
  }
}
