import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:my_forum_flutter_project/widget/login/login.dart';
import 'package:my_forum_flutter_project/widget/questions/bottom_navigation_bar.dart';
import 'package:my_forum_flutter_project/manager/auth.dart' as auth;

Router config() {
  final router = Router();

  router.define('/', handler: Handler(handlerFunc: (context, param) {
    return AuthGuardWidget(source: NavigationBar());
  }));

  return router;
}

class AuthGuardWidget extends StatefulWidget {
  AuthGuardWidget({Key key, this.source}) : super(key: key);
  final Widget source;

  @override
  State<StatefulWidget> createState() {
    return _AuthGuardWidgetState();
  }
}

class _AuthGuardWidgetState extends State<AuthGuardWidget> {
  bool isAuth = false;

  Widget getSource() {
    return WillPopScope(
      onWillPop: () async {
        isAuth = await auth.isAuthenticated();
        if (isAuth) {
          return true;
        }
        setState(() {});
        return false;
      },
      child: widget.source,
    );
  }

  Widget getLogin() {
    return WillPopScope(
      onWillPop: () async {
        isAuth = await auth.isAuthenticated();
        if (isAuth) {
          setState(() {});
          return false;
        }
        return true;
      },
      child: Login(),
    );
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      this.isAuth = await auth.isAuthenticated();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return isAuth ? getSource() : getLogin();
  }
}