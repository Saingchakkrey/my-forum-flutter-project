import 'package:flutter/material.dart';
import 'package:my_forum_flutter_project/controller/dummyData.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<int> fav = [];

  @override
  void initState() {
    super.initState();
  }

  Widget tabNewView() {
    void _onFavToggled(int itemIndex) {
      setState(() {
        if (this.fav.contains(itemIndex)) {
          this.fav.remove(itemIndex);
        } else {
          this.fav.add(itemIndex);
        }
      });
    }

    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 3.5,
          child: Column(
            children: <Widget>[
              ListTile(
                selected: fav.contains(index) ? true : false,
                contentPadding: EdgeInsets.all(15.0),
                leading: Container(
                  width: 70.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/guest_user.png"),
                    ),
                    border: Border.all(
                      width: 2.0,
                    ),
                  ),
                ),
                title: Text(
                  data[index].title,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  data[index].description,
                  style: TextStyle(
                    color: Color.fromRGBO(153, 153, 153, 1.0),
                  ),
                ),
                trailing: IconButton(
                    icon: Icon(fav.contains(index) ? Icons.favorite : Icons.favorite_border),
                    onPressed: () {
                      _onFavToggled(index);
                    }),
              ),
              Container(
                height: 2.0,
                width: 270.0,
                color: Colors.grey,
                margin: EdgeInsets.only(left: 80.0),
              ),
              Container(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                //margin: EdgeInsets.only(right: 113.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 75.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            "${data[index].answerAmount}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Answer")
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 30.0, left: 30.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            "${data[index].votedAmount}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Voted")
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 00.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            "${data[index].viewAmount}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Views")
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      padding: EdgeInsets.only(right: 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            "",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("${data[index].postDuration.day} days ago")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget tabNew() {
    return Tab(
      child: Text(
        "New",
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget tabTop() {
    return Tab(
      child: Text(
        "Top",
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget tabAll() {
    return Tab(
      key: GlobalKey(),
      child: Text(
        "All",
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget tabBar() {
    return TabBar(
      labelStyle: TextStyle(color: Colors.red),
      tabs: <Widget>[
        //Tab: New
        tabNew(),
        //Tab: Top
        tabTop(),
        //Tab: ALL
        tabAll(),
      ],
      unselectedLabelColor: Colors.black,
    );
  }

  Widget tabBarView() {
    return TabBarView(
      children: <Widget>[
        //TabView: New
        tabNewView(),
        Text("Hi"),
        Text("Halo"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: tabBar(),
        body: tabBarView(),
        key: GlobalKey(),
      ),
    );
  }
}
