import 'package:catch_card/modals/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          leading: new IconButton(
            icon: new Icon(Icons.close, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.indigo[400],
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(user.uid)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
