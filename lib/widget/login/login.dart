import 'package:flutter/material.dart';
import 'package:my_forum_flutter_project/controller/auth.dart' as auth;
import 'package:my_forum_flutter_project/widget/login/dialog_authGuest.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:my_forum_flutter_project/entry.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isLoggedIn = false;

  void initiateFacebookLogin() async {
    var facebookLogin = FacebookLogin();
    var facebookLoginResult =
        await facebookLogin.logInWithReadPermissions(['email']);
    switch (facebookLoginResult.status) {
      case FacebookLoginStatus.error:
        print("Error");
        onLoginStatusChanged(false);
        break;
      case FacebookLoginStatus.cancelledByUser:
        print("CancelledByUser");
        onLoginStatusChanged(false);
        break;
      case FacebookLoginStatus.loggedIn:
        print("LoggedIn");
        onLoginStatusChanged(true);
        break;
    }
  }

  void onLoginStatusChanged(bool isLoggedIn) {
    setState(() {
      this.isLoggedIn = isLoggedIn;
    });
  }

  showAuthDialog() async {
    var result = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AuthDialog();
        });
    if(result == "CONTINUE AS GUEST") {
      auth.login("auth.guest.token");
      Navigator.maybePop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Engineering Forum"),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 100.0,
                height: 100.0,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                  color: Color(0xFFb01c497),
                  borderRadius: BorderRadius.circular(20.0),
                )),
              ),
              Container(
                  child: Column(
                children: <Widget>[
                  Text(
                    "Get your Forum ID",
                    style:
                        TextStyle(color: Color(0xFFb80000000), fontSize: 25.0),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      'To get access for commends,\nvote or ask some thing you want',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFFb999999)),
                    ),
                  ),
                ],
              )),
              Container(
                  //margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                  child: Text(
                'LOGIN WITH',
                style: TextStyle(color: Color(0xFFb999999), fontSize: 25.0),
              )),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      height: 100.0,
                      margin: EdgeInsets.only(right: 20.0),
                      child: FlatButton(
                          padding: EdgeInsets.all(10.0),
                          onPressed: () {},
                          child: Image(image: AssetImage('assets/google.png'))),
                    ),
                    Container(
                      height: 80.0,
                      width: 1.0,
                      color: Colors.grey,
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      margin: EdgeInsets.only(left: 20.0),
                      child: FlatButton(
                          onPressed: () => initiateFacebookLogin(),
                          child:
                              Image(image: AssetImage('assets/facebook.png'))),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  'OR',
                  style: TextStyle(color: Color(0xFFb999999), fontSize: 25.0),
                ),
              ),
              Container(
                height: 50.0,
                width: 350.0,
                padding: EdgeInsets.only(left: 40.0, right: 40.0),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  color: Color(0xFFb01c497),
                  child: Text(
                    'Continue as guest',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    showAuthDialog();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
