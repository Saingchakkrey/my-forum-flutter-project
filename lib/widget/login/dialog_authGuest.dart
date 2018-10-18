import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthDialog extends StatefulWidget {
  final String authType = "guest";
  final String authImage = "assets/guest_auth.png";
  final String userImage = "assets/guest_user.png";
  final String username = "Guest";
  final String dialogDescription = "Guest login is a preview only mode.";
  final String setting = "Info.";
  final String button = "CONTINUE AS GUEST";

  _AuthDialogState createState() => _AuthDialogState();
}

class _AuthDialogState extends State<AuthDialog> {
  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  Widget authImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 30.0,
          height: 30.0,
          padding: EdgeInsets.only(top: 0.0, right: 0.0, left: 0.0),
          child: Image(
            image: AssetImage(widget.authImage),
          ),
        )
      ],
    );
  }

  Widget userImage() {
    return Container(
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.green),
          image: DecorationImage(image: AssetImage(widget.userImage))),
    );
  }

  Widget userName() {
    return Container(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Text(
        widget.username,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }

  Widget description() {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
      child: Column(
        children: <Widget>[
          Text(
            widget.dialogDescription,
            textAlign: TextAlign.center,
            style: TextStyle(color: const Color(0x80000000), fontSize: 11.0),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20.0, top: 3.0),
            child: InkWell(
              child: Text(
                widget.setting,
                style: TextStyle(fontSize: 11.0, color: Colors.lightBlue),
              ),
              onTap: () {
                print("Hello");
              },
            ),
          )
        ],
      ),
    );
  }

  Color buttonColor() {
    return Color.fromRGBO(1, 196, 151, 1.0);
  }

  Widget button() {
    return Container(
      height: 50.0,
      width: 280.0,
      child: FlatButton(
        color: buttonColor(),
        child: Text(
          widget.button,
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        onPressed: () {
          Navigator.pop(context, widget.button);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: authImage(),
      titlePadding: EdgeInsets.only(left: 10.0, top: 10.0),
      contentPadding:
          EdgeInsets.only(left: 0.0, right: 0.0, bottom: 0.0, top: 0.0),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          userImage(),
          userName(),
          description(),
          button(),
        ],
      ),
    );
  }
}
