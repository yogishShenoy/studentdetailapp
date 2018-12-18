import 'package:flutter/material.dart';
import 'dart:io';
import './main.dart';
import 'package:student/lecturer/lecturer.dart';
import 'package:student/parent/parent.dart';
import 'package:student/student/student.dart';

// class ask_page extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(

//     );
//   }
// }


class ask_page extends StatefulWidget {
  @override
  _ask_pageState createState() => _ask_pageState();
}

class _ask_pageState extends State<ask_page> {
  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Do you want to exit the app?"),
              actions: <Widget>[
                new FlatButton(
                  child: Text("NO"),
                  onPressed: () => Navigator.pop(context, false),
                ),
                new FlatButton(
                  child: Text("YES"),
                  onPressed:()=>exit(0)//Navigator.pop(context, true),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
         backgroundColor: Colors.blueAccent,
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.apps),
            )
          ],
          title: Text("STUDENT DETAIL"),
          centerTitle: true,
        ),
        body: Container(
            child: Center(
                child: ListView(
                   // mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
              new Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 35.0, bottom: 30.0, left: 25.0),
                child: Text("LOGIN AS:",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0)),
              ),
              new Container(
                margin: EdgeInsets.only(
                  top: 20.0,
                ),
                child: Column(
                  children: <Widget>[
                    new RaisedButton(
                      color: Colors.blue,
                      child: Text(
                        "ADMIN",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("log_admin");
                        //print("$aa"+"$b");
                      },
                    ),
                  ],
                ),
              ),
              new Container(
                margin: EdgeInsets.only(
                  top: 20.0,
                ),
                child: Column(
                  children: <Widget>[
                    new RaisedButton(
                      color: Colors.blue,
                      child: Text(
                        "LECTURER",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("log_lecturer");
                      },
                    ),
                  ],
                ),
              ),
              new Container(
                margin: EdgeInsets.only(
                  top: 20.0,
                ),
                child: Column(
                  children: <Widget>[
                    new RaisedButton(
                      color: Colors.blue,
                      child: Text(
                        "STUDENT",
                        style: TextStyle(color: Colors.white ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("log_student");
                      },
                    ),
                  ],
                ),
              ),
              new Container(
                margin: EdgeInsets.only(
                  top: 20.0,
                ),
                child: Column(
                  children: <Widget>[
                    new RaisedButton(
                      color: Colors.blue,
                      child: Text(
                        "PARENT",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("log_parent");
                      },
                    )
                  ],
                ),
              ),
            ]))),
      ),
    );
  }
}
