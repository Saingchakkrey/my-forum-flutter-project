import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget forumImage() {
    return Container(
      child: Image(
        image: AssetImage("assets/forum.jpg"),
      ),
      padding: EdgeInsets.only(bottom: 20.0),
    );
  }

  Widget fbLogin() {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: RaisedButton(
        padding: EdgeInsets.all(0.0),
        child: Image(
          image: AssetImage("assets/login_with_fb.png"),
        ),
        onPressed: () {},
      ),
    );
  }

  Widget guestLogin() {
    return Container(
      padding: EdgeInsets.all(150.0),
      child: GestureDetector(
        child: Text("Skip"),
        onTap: () {

        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Engineering Forum"),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            forumImage(),
            fbLogin(),
            guestLogin(),
          ],
        ),
      ),
    );
  }
}
