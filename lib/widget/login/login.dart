import 'package:flutter/material.dart';
import 'package:my_forum_flutter_project/widget/login/dialog_authentication.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  showAuthDialog({String auth: "guest", String name: "Guest"}) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AuthDialog(
            authType: auth,
            username: name,
          );
        });
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
            children: <Widget>[
              Container(
                width: 100.0,
                height: 100.0,
                margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                child: DecoratedBox(
                    decoration: BoxDecoration(
                  color: Color(0xFFb01c497),
                  borderRadius: BorderRadius.circular(20.0),
                )),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                child: Text(
                  "Get your Forum ID",
                  style: TextStyle(color: Color(0xFFb80000000), fontSize: 25.0),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: Text(
                  'To get access for commends,\nvote or ask some thing you want',
                  style: TextStyle(color: Color(0xFFb999999)),
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'LOGIN WITH',
                    style: TextStyle(color: Color(0xFFb999999), fontSize: 25.0),
                  )),
              Container(
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      height: 100.0,
                      child: FlatButton(
                          onPressed: null, child: Image(image: AssetImage('assets/google.png'))),
                    ),
                    Container(
                      height: 100.0,
                      width: 2.0,
                      color: Colors.grey,
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      child: FlatButton(
                          onPressed: null, child: Image(image: AssetImage('assets/facebook.png'))),
                    ),
                  ],
                ),
              ),
              Text(
                'OR',
                style: TextStyle(color: Color(0xFFb999999), fontSize: 25.0),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: RawMaterialButton(
                  onPressed: null,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xFFb01c497),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Continue as guest',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
