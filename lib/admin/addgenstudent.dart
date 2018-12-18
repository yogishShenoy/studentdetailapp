import 'package:flutter/material.dart';

class addgenstudent extends StatefulWidget {
  @override
  _addgenstudentState createState() => _addgenstudentState();
}

class _addgenstudentState extends State<addgenstudent> {
  var sex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ADD STUDENT"),
        centerTitle: true,
      ),

      body: new Container(
       child:ListView(
        padding: EdgeInsets.all(10),
       children: <Widget>[
         Padding(padding: EdgeInsets.only(top:30.0)),
         new TextFormField(
           decoration: InputDecoration(hintText: "Enter Student ID",labelText: "STUDENT ID",border: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid,color: Colors.white ),gapPadding: 10.0),),
         ),
         Padding(padding: EdgeInsets.only(bottom:20.0)),
         new TextFormField(
           decoration:  InputDecoration(hintText: "Enter Student name",labelText: "STUDENT NAME",border: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid))),
         ),
         Padding(padding: EdgeInsets.only(top: 20.0,bottom: 10.0),),
      new SizedBox(
        child:Material(
          color:  Colors.grey.shade200,
          child: Column(
        children: <Widget>[
          new Container(
            margin: EdgeInsets.only(left: 10.0,top: 10.0),
            alignment:Alignment.topLeft,
           child: Text("GENDER",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,)),
          ),
          
          new RadioListTile(
           activeColor: Colors.blue,
           groupValue: sex,
           value: "Male",
           title: Text("MALE",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
           onChanged: null,
         ),
         new RadioListTile<String>(
           activeColor: Colors.blue,
           groupValue: sex,
           value: "Female",
           title: Text("FEMALE",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
           onChanged: null,

         ),

        ],
      ),     

        )
        
        
      ),



      
         
         Padding(padding: EdgeInsets.only(bottom:20.0)),
        new RaisedButton(splashColor: Colors.greenAccent,onPressed: (){},child: Text("ADD",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),color: Colors.green,)
       ],

     ),
      ),
    );
  }
}