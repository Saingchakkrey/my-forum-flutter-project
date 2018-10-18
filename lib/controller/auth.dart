import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

const TOKEN_PREF_KEY = "auth.guest.token";
const ME_PREF_KEY = "auth.me";

login(String token) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  await preferences.setString(TOKEN_PREF_KEY, token);
}

Future<bool> isAuthenticated() async {
  var pref = await SharedPreferences.getInstance();
  return pref.getString(TOKEN_PREF_KEY) != null ? true : false;
}