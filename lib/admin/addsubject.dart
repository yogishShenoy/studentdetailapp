import 'package:flutter/material.dart';

class addsubject extends StatefulWidget {
  @override
  _addsubjectState createState() => _addsubjectState();
}

class _addsubjectState extends State<addsubject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ADD SUBJECT"),
        centerTitle: true,
      ),
      body: new Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 20),),
            new TextField(
              decoration: InputDecoration(hintText: "Enter Subject ID",labelText: "SUBJECT ID",border: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid,),),),
             ),
             Padding(padding: EdgeInsets.only(top: 20),),
              new TextField(
              decoration: InputDecoration(hintText: "Enter Subject Name",labelText: "SUBJECT NAME",border: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid,),),),
             ),
             Padding(padding: EdgeInsets.only(top: 20),),
              new TextField(
              decoration: InputDecoration(hintText: "Enter lecturer ID",labelText: "Lecturer ID",border: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid,),),),
             ),
             Padding(padding: EdgeInsets.only(top: 20),),
              new TextField(
              decoration: InputDecoration(hintText: "Enter lecturer ID",labelText: "Lecturer ID",border: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid,),),),
             ),
             Padding(padding: EdgeInsets.only(top: 20),),
              new TextField(
              decoration: InputDecoration(hintText: "Enter lecturer ID",labelText: "Lecturer ID",border: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid,),),),
             ),
             Padding(padding: EdgeInsets.only(top: 20),),
              new TextField(
              decoration: InputDecoration(hintText: "Enter lecturer ID",labelText: "Lecturer ID",border: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid,),),),
             ),
             Padding(padding: EdgeInsets.only(top: 20),),
              new TextField(
              decoration: InputDecoration(hintText: "Enter lecturer ID",labelText: "Lecturer ID",border: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid,),),),
             ),
             Padding(padding: EdgeInsets.only(top: 20),),
             new RaisedButton(shape: RoundedRectangleBorder(),
             child: Text("SUBMIT",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
             color: Colors.green,
             onPressed: (){},
               
             )
          ],
        ),
      ),
    );
  }
}