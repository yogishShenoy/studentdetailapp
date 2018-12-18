import 'package:flutter/material.dart';
import './ask_page.dart';
import 'dart:async';

class spalsh_screen extends StatefulWidget {
  @override
  _spalsh_screenState createState() => _spalsh_screenState();
}

class _spalsh_screenState extends State<spalsh_screen> {
  void ask() {
    //Navigator.of(context).pop();
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new ask_page()));
  }

  start_timer() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, ask);
  }

  @override
  void initState() {
    super.initState();
    start_timer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.lightBlueAccent),
          ),
          ListView(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // Expanded(flex: 2),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 15.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(
                          Icons.school,
                          color: Colors.blueAccent,
                          size: 70.0,
                        ),
                      ),
                    ),
                    Text("STUDENT DETAIL",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0)),
                    Container(
                      padding: EdgeInsets.only(top: 180.0),
                      child: Column(
                        children: <Widget>[
                          new Container(
                            margin: EdgeInsets.only(top: 80.0),
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.white,
                            ),
                          ),
                          new Container(
                            margin: EdgeInsets.only(top: 10.0),
                            child: Text("Loading...",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
