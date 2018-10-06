import 'package:flutter/material.dart';

class Course extends StatefulWidget {
  @override
  _CourseState createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  initState() {
    super.initState();
  }

  Widget itCourse() {
    return Expanded(
      child: Card(
        margin: EdgeInsets.only(left: 15.0, top: 10.0, right: 4.0, bottom: 4.0),
        elevation: 3.5,
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(
                left: 8.0, right: 8.0, top: 20.0, bottom: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: 70.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/guest_user.png"),
                    ),
                    border: Border.all(
                      color: Colors.green,
                      width: 2.0,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
                  child: Text(
                    "Information Technology Engineering",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color.fromRGBO(90, 90, 90, 1.0),
                    ),
                  ),
                ),
                Container(
                  height: 1.0,
                  color: Colors.grey,
                ),
                Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    "1330",
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(90, 90, 90, 1.0),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Questions",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color.fromRGBO(153, 153, 153, 1.0),
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 5.0),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //View
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.remove_red_eye,
                            size: 10.0,
                            color: Color.fromRGBO(153, 153, 153, 1.0),
                          ),
                          Text(
                            "1.4k",
                            style: TextStyle(
                              color: Color.fromRGBO(153, 153, 153, 1.0),
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Votes
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.check_box,
                            size: 10.0,
                            color: Color.fromRGBO(153, 153, 153, 1.0),
                          ),
                          Text(
                            "932",
                            style: TextStyle(
                                color: Color.fromRGBO(153, 153, 153, 1.0),
                                fontSize: 10.0),
                          ),
                        ],
                      ),
                    ),
                    //Answers
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.lightbulb_outline,
                            color: Color.fromRGBO(153, 153, 153, 1.0),
                            size: 10.0,
                          ),
                          Text(
                            "879",
                            style: TextStyle(
                                color: Color.fromRGBO(153, 153, 153, 1.0),
                                fontSize: 10.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget teeCourse() {
    return Expanded(
      child: Card(
        margin: EdgeInsets.only(left: 4.0, top: 10.0, right: 15.0, bottom: 4.0),
        elevation: 3.5,
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(
                left: 8.0, right: 8.0, top: 20.0, bottom: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: 70.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/guest_user.png"),
                    ),
                    border: Border.all(
                      color: Colors.green,
                      width: 2.0,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
                  child: Text(
                    "Telecom and Electronic Engineering",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color.fromRGBO(90, 90, 90, 1.0),
                    ),
                  ),
                ),
                Container(
                  height: 1.0,
                  color: Colors.grey,
                ),
                Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    "1330",
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(90, 90, 90, 1.0),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Questions",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color.fromRGBO(153, 153, 153, 1.0),
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 5.0),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //View
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.remove_red_eye,
                            size: 10.0,
                            color: Color.fromRGBO(153, 153, 153, 1.0),
                          ),
                          Text(
                            "1.4k",
                            style: TextStyle(
                              color: Color.fromRGBO(153, 153, 153, 1.0),
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Votes
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.check_box,
                            size: 10.0,
                            color: Color.fromRGBO(153, 153, 153, 1.0),
                          ),
                          Text(
                            "932",
                            style: TextStyle(
                                color: Color.fromRGBO(153, 153, 153, 1.0),
                                fontSize: 10.0),
                          ),
                        ],
                      ),
                    ),
                    //Answers
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.lightbulb_outline,
                            color: Color.fromRGBO(153, 153, 153, 1.0),
                            size: 10.0,
                          ),
                          Text(
                            "879",
                            style: TextStyle(
                                color: Color.fromRGBO(153, 153, 153, 1.0),
                                fontSize: 10.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bioeCourse() {
    return Expanded(
      child: Card(
        margin: EdgeInsets.only(left: 15.0, top: 4.0, right: 4.0, bottom: 10.0),
        elevation: 3.5,
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(
                left: 8.0, right: 8.0, top: 20.0, bottom: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: 70.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/guest_user.png"),
                    ),
                    border: Border.all(
                      color: Colors.green,
                      width: 2.0,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
                  child: Text(
                    "Bio\nEngineering",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color.fromRGBO(90, 90, 90, 1.0),
                    ),
                  ),
                ),
                Container(
                  height: 1.0,
                  color: Colors.grey,
                ),
                Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    "1330",
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(90, 90, 90, 1.0),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Questions",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color.fromRGBO(153, 153, 153, 1.0),
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 5.0),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //View
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.remove_red_eye,
                            size: 10.0,
                            color: Color.fromRGBO(153, 153, 153, 1.0),
                          ),
                          Text(
                            "1.4k",
                            style: TextStyle(
                              color: Color.fromRGBO(153, 153, 153, 1.0),
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Votes
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.check_box,
                            size: 10.0,
                            color: Color.fromRGBO(153, 153, 153, 1.0),
                          ),
                          Text(
                            "932",
                            style: TextStyle(
                                color: Color.fromRGBO(153, 153, 153, 1.0),
                                fontSize: 10.0),
                          ),
                        ],
                      ),
                    ),
                    //Answers
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.lightbulb_outline,
                            color: Color.fromRGBO(153, 153, 153, 1.0),
                            size: 10.0,
                          ),
                          Text(
                            "879",
                            style: TextStyle(
                                color: Color.fromRGBO(153, 153, 153, 1.0),
                                fontSize: 10.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget other() {
    return Expanded(
      child: Card(
        margin: EdgeInsets.only(left: 4.0, top: 4.0, right: 15.0, bottom: 10.0),
        elevation: 3.5,
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(
                left: 8.0, right: 8.0, top: 20.0, bottom: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: 70.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/guest_user.png"),
                    ),
                    border: Border.all(
                      color: Colors.green,
                      width: 2.0,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
                  child: Text(
                    "Other Question\nPeople Might Ask",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color.fromRGBO(90, 90, 90, 1.0),
                    ),
                  ),
                ),
                Container(
                  height: 1.0,
                  color: Colors.grey,
                ),
                Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    "1330",
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(90, 90, 90, 1.0),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Questions",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color.fromRGBO(153, 153, 153, 1.0),
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 5.0),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //View
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.remove_red_eye,
                            size: 10.0,
                            color: Color.fromRGBO(153, 153, 153, 1.0),
                          ),
                          Text(
                            "1.4k",
                            style: TextStyle(
                              color: Color.fromRGBO(153, 153, 153, 1.0),
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Votes
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.check_box,
                            size: 10.0,
                            color: Color.fromRGBO(153, 153, 153, 1.0),
                          ),
                          Text(
                            "932",
                            style: TextStyle(
                                color: Color.fromRGBO(153, 153, 153, 1.0),
                                fontSize: 10.0),
                          ),
                        ],
                      ),
                    ),
                    //Answers
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.lightbulb_outline,
                            color: Color.fromRGBO(153, 153, 153, 1.0),
                            size: 10.0,
                          ),
                          Text(
                            "879",
                            style: TextStyle(
                                color: Color.fromRGBO(153, 153, 153, 1.0),
                                fontSize: 10.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget allCourses() {
    return Container(
      color: Color.fromRGBO(234, 234, 234, 1.0),
      child: ListView(
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  itCourse(),
                  teeCourse(),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  bioeCourse(),
                  other(),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: allCourses(),
    );
  }
}
