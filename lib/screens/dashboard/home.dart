import 'package:catch_card/modals/user.dart';
import 'package:catch_card/screens/dashboard/profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    return Container(
        child: DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                bottom: TabBar(
                  tabs: <Widget>[
                    Tab(text: 'Home'),
                    Tab(text: 'Log Entry'),
                  ],
                ),
                backgroundColor: Colors.indigo[400],
                title: Text('AK Catch Card'),
                elevation: 0.0,
                actions: <Widget>[
                  FlatButton.icon(
                    onPressed: (){
                      print('pressed');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                    },
                    icon: Icon(Icons.person),
                    label: Text('Profile'),
                  ),
                ],
              ),
              body: TabBarView(
                  children: <Widget>[
                    Dashboard(),
                    Quests()
                  ]
              ),
            )
        )
    );
  }
}


// Home
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Home'),
    );
  }
}


// Entry
class Quests extends StatefulWidget {
  @override
  _QuestsState createState() => _QuestsState();
}

class _QuestsState extends State<Quests> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Entry'),
    );
  }
}
