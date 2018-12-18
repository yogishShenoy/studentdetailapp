import 'package:flutter/material.dart';

class imcaupdatesubject extends StatefulWidget {
  @override
  _imcaupdatesubjectState createState() => _imcaupdatesubjectState();
}

class _imcaupdatesubjectState extends State<imcaupdatesubject> {
  bool ok=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Card(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            new TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.solid)),
                labelText: "SUBJECTS ID",
                hintText: "Enter Subjects ID",
              ),keyboardType: TextInputType.number,
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            new RaisedButton(
              child: Text(
                "OK",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              color: Colors.cyan,
              onPressed: () {setState(() {
                              ok=true;
                            });},
            ), ok?
            new Column(
              children: <Widget>[
                 new TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.solid)),
                labelText: "SUBJECTS ID",
                hintText: "Enter Subjects ID",),
                ),
                new TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.solid)),
                labelText: "SUBJECTS ID",
                hintText: "Enter Subjects ID",),
                ),

              ],
            ): Text("false"),
            new RaisedButton(child: Text("falsebtn"),onPressed: (){setState(() {
                          ok=false;
                        });},)
          ],
        ),
      ),
    );
  }
}