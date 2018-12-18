import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'dart:convert';
import 'dart:async';
final FirebaseDatabase database=FirebaseDatabase.instance;
String id, name, phone,exm,rname,rmobile,checkid,k;




final TextEditingController _idClear = new TextEditingController();
final TextEditingController _mobileClear = new TextEditingController();
final TextEditingController _nameClear = new TextEditingController();
Map<dynamic,dynamic> data;



class add_student extends StatefulWidget {
  @override
  _add_studentState createState() => _add_studentState();
}

class _add_studentState extends State<add_student> {
  var scaffoldkey = GlobalKey<ScaffoldState>();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        title: Text("add student"),
        centerTitle: true,
      ),
      body: adding_student(),
    );
  }
}

class adding_student extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldkey;
  adding_student({Key key, this.scaffoldkey}) :super(key:key);
  @override
  _adding_studentState createState() => _adding_studentState();
}

class _adding_studentState extends State<adding_student> {  
  List daa;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          new TextField(
            controller: _idClear,
            onChanged: (val) {
              id = val;
            },
            decoration: InputDecoration(
                labelText: "id",
                hintText: "Enter student id",
                border: OutlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.solid))),
                  
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
          ),
          new TextField(
            controller: _nameClear,
            onChanged: (val) {
              name = val;
            },
            decoration: InputDecoration(
                labelText: "Name",
                hintText: "Enter student name",
                border: OutlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.solid),),),
                  
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
          ),
          new TextField(
            
            controller: _mobileClear,
              onChanged: (val) {
                phone = val;
              },
              decoration: InputDecoration(
                  labelText: "Mobile",
                  hintText: "Enter mobile number",
                
                  border: OutlineInputBorder(
                      borderSide: BorderSide(style: BorderStyle.solid))),
              keyboardType: TextInputType.phone,),
            
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
          ),
          new RaisedButton(
            child: Text("save"),
            onPressed: (){upload();},
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                      ),
                      new RaisedButton(
                        child: Text("update"),
                        onPressed: () {retrive();},
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                      ),
                      new RaisedButton(
                        child: Text("delete"),
                        onPressed: () {delete();},
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                      ),
                      new RaisedButton(
                        child: Text("view"),
                        onPressed: (){retrive();},
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                      ),
                    ],
                  ),
                );
              }
            
            
}

upload() { 
              
              if(id==null||name==null||phone==null){
                SnackBar(content: Text("PLEASE ENTER ALL THE FIELDS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),backgroundColor: Colors.redAccent,);
              }else if(id!=null && name!=null && phone!=null){
                 database.reference().child("college/class/IMCA/students/$id").once().then((DataSnapshot snapshot)async{
                 checkid=snapshot.value.toString();
                checkid=snapshot.value['id'];
                  print("decoded $checkid");
                  print("another $checkid");
                });
                if(checkid==id){
                 print("student already exist");
              }else if(checkid!=id){
                insertion();
                 print("student added");
                checkid=null;
              }
              }
              
              }
              
              
 Future<Object> retrive() async{
                Object detail;
                Object key;
            
                database.reference().child("college/class/IMCA/students/$id").once().then((DataSnapshot snapshot){
    
                  print(detail.toString());
                  detail=snapshot.value.toString();
                  key=snapshot.key.toString();
                 rname= snapshot.value['name'];
                 rmobile=snapshot.value['phone'];

                    print(detail);
                    print(key);
                    exm=detail;
                    print(rname);
                    print(rmobile);
                  insertion();
                    

                }
                );
                return detail;
              }

              delete(){
                 database.reference().child("college/class/IMCA/students/$id").remove(); 
              }

              userExistsCallback(id, exists) {
              if (exists==true) {
                print('user ' + id + ' exists!');
               } else {
              print('user ' + id + ' does not exist!');
              insertion();
             }
              }

   calls(){
     database.reference().child("college/class/IMCA/students/$id").once().then((DataSnapshot snapshot) {

    bool exists;
    String k=snapshot.key;
     if(snapshot.value == id){
        exists=true;
     }else if(snapshot.value != id){
       exists=false;
     }
    userExistsCallback(id, exists);
    print(k);
   });
}

insertion(){
  database.reference().child("college/class/IMCA/students/$id").set({"id": id,
                  "name": name,
                   "phone": phone,});
                   _idClear.clear();
                   _nameClear.clear();
                   _mobileClear.clear();
                   id=null;
                   name=null;
                   phone=null;
               SnackBar(content: Text("DATA UPLOADED SUCCESSFULLY"),backgroundColor: Colors.greenAccent,duration: Duration(seconds: 2),);
}

            