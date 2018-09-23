import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthDialog extends StatefulWidget {
  String authType;
  String authImage;
  String userImage;
  String username;
  String dialogDescription;
  String setting;
  String button;

  AuthDialog(
      {this.authType: "guest",
      this.authImage: "assets/guest_auth.png",
      this.userImage: "assets/guest_user.png",
      this.username: "Guest",
      this.dialogDescription:
          "If you still wish to sign in as a guest, please understand that you COULD NOT "
          "ask, answer or react to any post. However, you can sign in with Facebook or Google Account later.",
      this.setting: "Info",
      this.button: "CONTINUE"});

  _AuthDialogState createState() => _AuthDialogState();
}

class _AuthDialogState extends State<AuthDialog> {
  @override
  void initState() {
    super.initState();

    if (widget.authType == "fb" || widget.authType == "gg") {
      widget.authImage = widget.authType == "fb" ? "assets/facebook.png" : "assets/google.png";
      widget.userImage = "assets/guest_user.png";
      widget.dialogDescription =
          "Engineering Forum will have access to name, email address and other public info.";
      widget.setting = "Edit the info you provide.";
      widget.button = "CONTINUE AS ${widget.username.toUpperCase()}";
    }
    setState(() {});
  }

  Widget authImage() {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 175.0, left: 5.0),
      child: Image(
        image: AssetImage(widget.authImage),
      ),
    );
  }

  Widget userImage() {
    return Container(
      height: 120.0,
      width: 120.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.green),
          image: DecorationImage(image: AssetImage(widget.userImage))),
    );
  }

  Widget userName() {
    return Container(
      padding: EdgeInsets.only(top: 35.0, bottom: 35.0),
      child: Text(
        widget.username,
        style: TextStyle(color: const Color(0x80000000), fontSize: 20.0),
      ),
    );
  }

  Widget description() {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
      child: Text(
        widget.dialogDescription,
        textAlign: TextAlign.center,
        style: TextStyle(color: const Color(0x80000000), fontSize: 15.0),
      ),
    );
  }

  Widget setting() {
    return Container(
      padding: EdgeInsets.only(bottom: 35.0),
      child: GestureDetector(
        child: Text(
          widget.setting,
          style: TextStyle(fontSize: 15.0, color: Colors.lightBlue),
        ),
        onTapUp: (_) {
          print("Hello");
        },
      ),
    );
  }

  Color buttonColor() {
    if(widget.authType == "fb") {
      return const Color.fromRGBO(64, 127, 254, 1.0);
    }
    else if (widget.authType == "gg") {
      return const Color.fromRGBO(237, 65, 45, 1.0);
    }
    return const Color.fromRGBO(253, 189, 0, 1.0);
  }

  Widget button() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: Container(
            height: 40.0,
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: FlatButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
              color: buttonColor(),
              child: Text(
                widget.button,
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          authImage(),
          userImage(),
          userName(),
          description(),
          setting(),
          button(),
        ],
      ),
    );
  }
}
