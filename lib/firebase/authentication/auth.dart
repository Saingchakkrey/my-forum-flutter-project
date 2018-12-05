import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

Future<FirebaseUser> signInGuest() async {
  return await firebaseAuth.signInAnonymously();
}

void signOut() async {
  firebaseAuth.signOut();
}