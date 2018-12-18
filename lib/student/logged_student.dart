import 'package:flutter/material.dart';
import 'package:student/student/student.dart';

class logged_student extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("STUDENT"),
        centerTitle: true,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("$name"),
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
