import 'package:catch_card/modals/user.dart';
import 'package:catch_card/screens/auth/auth_screen.dart';
import 'package:catch_card/screens/dashboard/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    if (user == null) {
      return AuthScreen();
    }
    else {
      return Home();
    }
  }
}
