import 'package:flutter/material.dart';
import 'package:my_forum_flutter_project/widget/course_nav.dart';
import 'package:my_forum_flutter_project/widget/home_nav.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int currentIndex = 0;
  List<String> navigationName = ["Home", "Course", "Notifications", "Library"];
  List<Widget> children = [
    //TODO: Implement navigator button bodies here, CONSTRUCTOR NEEDED
    //Home
    Home(),
    Course(),
    Home(),
    Home(),
  ];

  Widget appBar() {
    return AppBar(
      leading: IconButton(
        color: Colors.white,
        icon: Icon(
          Icons.dehaze,
          size: 20.0,
        ),
        onPressed: () {},
      ),
      title: Text(
        navigationName[currentIndex],
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
            size: 20.0,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget bottomNavigation() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTabTapped,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 10.0),
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text(
              "Courses",
              style: TextStyle(fontSize: 10.0),
            )),
        BottomNavigationBarItem(
            icon: new Stack(children: <Widget>[
              new Icon(Icons.notifications),
              new Positioned(
                // draw a red marble
                top: 0.0,
                right: 0.0,
                child: new Icon(Icons.brightness_1,
                    size: 8.0, color: Colors.redAccent),
              )
            ]),
            title: Text(
              "Notifications",
              style: TextStyle(fontSize: 10.0),
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            title: Text(
              "Library",
              style: TextStyle(fontSize: 10.0),
            )),
      ],
    );
  }

  Widget drawerBottomNavigation() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTabTapped,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 10.0),
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text(
              "Courses",
              style: TextStyle(fontSize: 10.0),
            )),
        BottomNavigationBarItem(
            icon: new Stack(children: <Widget>[
              new Icon(Icons.notifications),
              new Positioned(
                // draw a red marble
                top: 0.0,
                right: 0.0,
                child: new Icon(Icons.brightness_1,
                    size: 8.0, color: Colors.redAccent),
              )
            ]),
            title: Text(
              "Notifications",
              style: TextStyle(fontSize: 10.0),
            )),
      ],
    );
  }

  Widget NavigationDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(1, 196, 151, 1.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_left,
                            color: Colors.white,
                            size: 32.0,
                          ),
                          onPressed: null),
                      IconButton(
                          icon: Icon(
                            Icons.account_circle,
                            color: Colors.white,
                            size: 32.0,
                          ),
                          onPressed: null),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/facebook.png'),
                        width: 70,
                        height: 70,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text("Chheng SC"),
                          Text("IT Engineering"),
                          Text("Type: Student")
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      drawer: NavigationDrawer(),
      bottomNavigationBar: bottomNavigation(),
      body: children[currentIndex],
    );
  }
}
