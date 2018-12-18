import 'package:flutter/material.dart';

class log_parent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("PARENT LOGIN"),
        centerTitle: true,
      ),
      body: parent_log_page(),
    );
  }
}

class parent_log_page extends StatefulWidget {
  @override
  _admin_log_pageState createState() => _admin_log_pageState();
}

class _admin_log_pageState extends State<parent_log_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 70.0, right: 35.0, left: 40.0),
        child: Center(
            child: ListView(
          children: <Widget>[
            new Container(
                margin: EdgeInsets.only(left: 30.0, right: 105, bottom: 20.0),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new IconButton(
                      icon: Icon(
                        Icons.face,
                        color: Colors.white,
                        size: 90.0,
                      ),
                    ),
                  ],
                )),
            new Form(
                child: Column(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(top: 40.0, bottom: 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter the user name",
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter password",
                      enabledBorder: UnderlineInputBorder(),
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                ),
                new Row(
                  children: <Widget>[
                    new Container(
                      margin:
                          EdgeInsets.only(right: 30.0, top: 50.0, left: 15.0),
                      child: RaisedButton(
                        child: Text("LOGIN"),
                        color: Colors.green,
                        onPressed: () {
                          Navigator.of(context).pushNamed("logged_parent");
                        },
                      ),
                    ),
                    new Container(
                      margin:
                          EdgeInsets.only(right: 10.0, top: 50.0, left: 30.0),
                      child: RaisedButton(
                        child: Text("CANCEL"),
                        color: Colors.red,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    )
                  ],
                ),
              ],
            )),
          ],
        )));
  }
}
