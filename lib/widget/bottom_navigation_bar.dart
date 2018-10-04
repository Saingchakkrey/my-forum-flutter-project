import 'package:flutter/material.dart';
import 'package:my_forum_flutter_project/widget/home_nav.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int currentIndex = 0;
  List<Widget> children = [
    //TODO: Implement navigator button bodies here, CONSTRUCTOR NEEDED
    //Home
    Home(),
    Home(),
    Home(),
    Home(),
  ];

  Widget appBar() {
    return AppBar(
      title: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          IconButton(icon: Icon(Icons.dehaze), onPressed: () {}),
          Text("Title"),
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
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
                  icon: new Stack(
                      children: <Widget>[
                        new Icon(Icons.notifications),
                        new Positioned(  // draw a red marble
                          top: 0.0,
                          right: 0.0,
                          child: new Icon(Icons.brightness_1, size: 8.0,
                              color: Colors.redAccent),
                        )
                      ]
                  ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      bottomNavigationBar: bottomNavigation(),
      body: children[currentIndex],
    );
  }
}
