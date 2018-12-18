import 'package:flutter/material.dart';

class dellecturer extends StatefulWidget {
  @override
  _dellecturerState createState() => _dellecturerState();
}

class _dellecturerState extends State<dellecturer> {
  @override
  bool search=false;
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade300,
      margin: EdgeInsets.all(10.0),
      child: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(top: 13, bottom: 25),
              alignment: Alignment.topCenter,
              child: Text(
                "DELETE BY LECTURER ID",
                style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            new TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.solid),
                  ),
                  labelText: "LECTURER ID",
                  hintText: "Enter lecturer ID",
                  prefixIcon: Icon(Icons.person)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            new RaisedButton(
              child: Text(
                "OK",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15),
              ),
              color: Colors.red,
              onPressed: () {
                setState(() {
                  search=true;
                    });
              },
            ), search==true?
          new Container(
         child: Column(
         children: <Widget>[
           new Text(
            "ID :123",
            style: TextStyle(color: Colors.redAccent),
          ),
          new Text(
            "NAME :1234",
            style: TextStyle(color: Colors.redAccent),
          ),
          new Text(
            "CLASS :1234",
         style: TextStyle(color: Colors.redAccent),
         ),
        ],
      ),

          ) 
      : new Text("heiii") ,
      new RaisedButton(
        child: Text("false"),onPressed: (){setState(() {
                 search=false;  
                });
       },
      )
          ],
        ),
      ),
    );
    
  }
  
}



