import 'package:flutter/material.dart';
import 'package:my_forum_flutter_project/controller/dummyQuestion.dart';

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

    return Container(
      color: Color.fromRGBO(234, 234, 234, 1.0),
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin:
            EdgeInsets.only(left: 6.0, right: 6.0, bottom: 3.0, top: 3.0),
            elevation: 3.5,
            child: InkWell(
              onTap: () {},
              child: Column(
                children: <Widget>[
                  ListTile(
                    selected: fav.contains(index) ? true : false,
                    contentPadding: EdgeInsets.only(left: 15.0),
                    leading: Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/guest_user.png"),
                        ),
                      ),
                    ),
                    title: Container(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        data[index].title,
                        style: TextStyle(
                          color: Color.fromRGBO(128, 128, 128, 1.0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      data[index].description,
                      style: TextStyle(
                        color: Color.fromRGBO(153, 153, 153, 1.0),
                      ),
                    ),
                    trailing: IconButton(
                        icon: Icon(fav.contains(index)
                            ? Icons.favorite
                            : Icons.favorite_border),
                        onPressed: () {
                          _onFavToggled(index);
                        }),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 90.0,
                      ),
                      Container(
                        height: 1.0,
                        width: MediaQuery.of(context).size.width - 110,
                        color: Colors.grey,
                        //margin: EdgeInsets.only(left: 75.0),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 90.0,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "${data[index].answerAmount}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(128, 128, 128, 1.0),
                              ),
                            ),
                            Text(
                              "Answer",
                              style: TextStyle(
                                color: Color.fromRGBO(153, 153, 153, 1.0),
                              ),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                "${data[index].votedAmount}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(128, 128, 128, 1.0),
                                ),
                              ),
                              Text(
                                "Voted",
                                style: TextStyle(
                                  color: Color.fromRGBO(153, 153, 153, 1.0),
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "${data[index].viewAmount}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(128, 128, 128, 1.0),
                              ),
                            ),
                            Text(
                              "Views",
                              style: TextStyle(
                                color: Color.fromRGBO(153, 153, 153, 1.0),
                              ),
                            )
                          ],
                        ),
                        Flexible(
                          fit: FlexFit.loose,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                "${data[index].postDuration.toUtc()}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(128, 128, 128, 1.0),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget tabTopView() {
    void _onFavToggled(int itemIndex) {
      setState(() {
        if (this.fav.contains(itemIndex)) {
          this.fav.remove(itemIndex);
        } else {
          this.fav.add(itemIndex);
        }
      });
    }

    return Container(
      color: Color.fromRGBO(234, 234, 234, 1.0),
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin:
                EdgeInsets.only(left: 6.0, right: 6.0, bottom: 3.0, top: 3.0),
            elevation: 3.5,
            child: InkWell(
              onTap: () {},
              child: Column(
                children: <Widget>[
                  ListTile(
                    selected: fav.contains(index) ? true : false,
                    contentPadding: EdgeInsets.only(left: 15.0),
                    leading: Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/guest_user.png"),
                        ),
                      ),
                    ),
                    title: Container(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        data[index].title,
                        style: TextStyle(
                          color: Color.fromRGBO(128, 128, 128, 1.0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      data[index].description,
                      style: TextStyle(
                        color: Color.fromRGBO(153, 153, 153, 1.0),
                      ),
                    ),
                    trailing: IconButton(
                        icon: Icon(fav.contains(index)
                            ? Icons.favorite
                            : Icons.favorite_border),
                        onPressed: () {
                          _onFavToggled(index);
                        }),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 90.0,
                      ),
                      Container(
                        height: 1.0,
                        width: MediaQuery.of(context).size.width - 110,
                        color: Colors.grey,
                        //margin: EdgeInsets.only(left: 75.0),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 90.0,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "${data[index].answerAmount}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(128, 128, 128, 1.0),
                              ),
                            ),
                            Text(
                              "Answer",
                              style: TextStyle(
                                color: Color.fromRGBO(153, 153, 153, 1.0),
                              ),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                "${data[index].votedAmount}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(128, 128, 128, 1.0),
                                ),
                              ),
                              Text(
                                "Voted",
                                style: TextStyle(
                                  color: Color.fromRGBO(153, 153, 153, 1.0),
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "${data[index].viewAmount}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(128, 128, 128, 1.0),
                              ),
                            ),
                            Text(
                              "Views",
                              style: TextStyle(
                                color: Color.fromRGBO(153, 153, 153, 1.0),
                              ),
                            )
                          ],
                        ),
                        Flexible(
                          fit: FlexFit.loose,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                "${data[index].postDuration.toUtc()}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(128, 128, 128, 1.0),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget tabAllView() {
    void _onFavToggled(int itemIndex) {
      setState(() {
        if (this.fav.contains(itemIndex)) {
          this.fav.remove(itemIndex);
        } else {
          this.fav.add(itemIndex);
        }
      });
    }

    return Container(
      color: Color.fromRGBO(234, 234, 234, 1.0),
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin:
                EdgeInsets.only(left: 6.0, right: 6.0, bottom: 3.0, top: 3.0),
            elevation: 3.5,
            child: InkWell(
              onTap: () {},
              child: Column(
                children: <Widget>[
                  ListTile(
                    selected: fav.contains(index) ? true : false,
                    contentPadding: EdgeInsets.only(left: 15.0),
                    leading: Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/guest_user.png"),
                        ),
                      ),
                    ),
                    title: Container(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        data[index].title,
                        style: TextStyle(
                          color: Color.fromRGBO(128, 128, 128, 1.0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      data[index].description,
                      style: TextStyle(
                        color: Color.fromRGBO(153, 153, 153, 1.0),
                      ),
                    ),
                    trailing: IconButton(
                        icon: Icon(fav.contains(index)
                            ? Icons.favorite
                            : Icons.favorite_border),
                        onPressed: () {
                          _onFavToggled(index);
                        }),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 90.0,
                      ),
                      Container(
                        height: 1.0,
                        width: MediaQuery.of(context).size.width - 110,
                        color: Colors.grey,
                        //margin: EdgeInsets.only(left: 75.0),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 90.0,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "${data[index].answerAmount}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(128, 128, 128, 1.0),
                              ),
                            ),
                            Text(
                              "Answer",
                              style: TextStyle(
                                color: Color.fromRGBO(153, 153, 153, 1.0),
                              ),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                "${data[index].votedAmount}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(128, 128, 128, 1.0),
                                ),
                              ),
                              Text(
                                "Voted",
                                style: TextStyle(
                                  color: Color.fromRGBO(153, 153, 153, 1.0),
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "${data[index].viewAmount}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(128, 128, 128, 1.0),
                              ),
                            ),
                            Text(
                              "Views",
                              style: TextStyle(
                                color: Color.fromRGBO(153, 153, 153, 1.0),
                              ),
                            )
                          ],
                        ),
                        Flexible(
                          fit: FlexFit.loose,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                "${data[index].postDuration.toUtc()}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(128, 128, 128, 1.0),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget tabNew() {
    return Tab(
      child: Text(
        "New",
      ),
    );
  }

  Widget tabTop() {
    return Tab(
      child: Text(
        "Top",
      ),
    );
  }

  Widget tabAll() {
    return Tab(
      key: GlobalKey(),
      child: Text(
        "All",
      ),
    );
  }

  Widget tabBar() {
    return TabBar(
      tabs: <Widget>[
        //Tab: New
        tabNew(),
        //Tab: Top
        tabTop(),
        //Tab: ALL
        tabAll(),
      ],
      labelColor: Color.fromRGBO(1, 196, 151, 1.0),
      unselectedLabelColor: Color.fromRGBO(153, 153, 153, 1.0),
      indicatorColor: Color.fromRGBO(1, 196, 151, 1.0),
      indicatorWeight: 1.0,
    );
  }

  Widget tabBarView() {
    return TabBarView(
      children: <Widget>[
        //TabView: New
        tabNewView(),
        tabTopView(),
        tabAllView(),
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
