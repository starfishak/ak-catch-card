import 'package:catch_card/screens/auth/auth_failed.dart';
import 'package:catch_card/screens/dashboard/home.dart';
import 'package:catch_card/services/auth_service.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  // Sign user in via Anon Auth with Firebase
  static final AuthService _auth = AuthService();
  dynamic result = _auth.signinAnon();

  @override
  Widget build(BuildContext context) {
    if (result == null) {
      return Container(
        child: AuthFailed(),
      );
    }
    else {
      return Container(
        child: Home(),
      );
    }
  }
}