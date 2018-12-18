import 'package:flutter/material.dart';

class logged_parent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("PARENT"),
        centerTitle: true,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("yogish p shenoy"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text("Y"),
              ),
              accountEmail: Text("yogishshenoy027@gmail.com"),
            ),
            new ListTile(
              leading: Text("hai"),
            ),
          ],
        ),
      ),
    );
  }
}
