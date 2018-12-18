import 'package:flutter/material.dart';

class login_page extends StatefulWidget {
  @override
  _login_pageState createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          child: Column(children: <Widget>[
        new Container(
          margin: EdgeInsets.only(top: 40.0, bottom: 10.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Enter the user name",
            ),
            keyboardType: TextInputType.text,
          ),
        ),
        new Container(
          margin: EdgeInsets.only(top: 10.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Enter password",
              enabledBorder: UnderlineInputBorder(),
            ),
            keyboardType: TextInputType.text,
            obscureText: true,
          ),
        ),
      ])),
    );
  }
}
