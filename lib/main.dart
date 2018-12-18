import 'package:flutter/material.dart';
import 'package:student/admin/logged_admin.dart';
import 'package:student/lecturer/lecturer.dart';
import 'package:student/lecturer/logged_lecturer.dart';
import 'package:student/parent/logged_parent.dart';
import 'package:student/parent/parent.dart';
import 'package:student/student/logged_student.dart';
import 'package:student/student/student.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:student/admin/addstudent.dart';
import './splash.dart';
import 'admin/admin.dart';
import 'package:student/admin/lecturer/addLecturer.dart';
import 'package:student/admin/slidelecturer.dart';
import 'package:student/admin/lecturer/dellecturer.dart';
import 'package:student/admin/lecturer/update.dart';
import 'package:student/admin/lecturer/view.dart';
import 'package:student/admin/class/1mca/1mca.dart';
import 'package:student/admin/class/2mca/2mca.dart';
import 'package:student/admin/class/3mca/3mca.dart';
import 'package:student/admin/class/1mca/addsujects.dart';
import 'package:student/admin/class/1mca/assignlecturer.dart';
import 'package:student/admin/class/1mca/updatesubject.dart';
import 'package:student/admin/class/1mca/viewlecturer.dart';
import 'package:student/admin/class/1mca/viewstudent.dart';
import 'package:student/admin/class/2mca/addsubject.dart';
import 'package:student/admin/class/3mca/addsubject.dart';
import 'package:student/admin/admindetail.dart';
import 'package:student/admin/addsubject.dart';
import 'package:student/admin/addnewadmin.dart';
import 'package:student/admin/addgenstudent.dart';
String a;
void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'mca project',
    home: spalsh_screen(),
    routes: <String, WidgetBuilder>{
      "ask": (BuildContext context) => new ask_page(),
      "log_admin": (BuildContext context) => new log_admin(),
      "log_lecturer": (BuildContext context) => new log_lecturer(),
      "log_student": (BuildContext context) => new log_student(),
      "log_parent": (BuildContext context) => new log_parent(),
      "logged_admin": (BuildContext context) => new logged_admin(),
      "logged_lecturer": (BuildContext context) => new logged_lecturer(),
      "logged_parent": (BuildContext context) => new logged_parent(),
      "logged_student": (BuildContext context) => new logged_student(),
      "add_student":(BuildContext context)=> new add_student(),
       "addlecturer":(BuildContext context)=> new addlecturer(),
       "slidelecturer":(BuildContext context)=> new slidelecturer(),
       "deletelecturer":(BuildContext context)=> new dellecturer(),
       "updatelecturer":(BuildContext context)=> new updatelecturer(),
       "viewlecturer":(BuildContext context)=> new viewlecturer(),
       "1mca":(BuildContext context)=> new imcaslide(),
       "2mca":(BuildContext context)=> new iimcaslide(),
       "3mca":(BuildContext context)=> new iiimcaslide(),
       "1mcaaddsubject":(BuildContext context)=> new imcaaddsubject(),
       "1mcaupdatesubject":(BuildContext context)=> new imcaupdatesubject(),
       "1mcaassinglecturer":(BuildContext context)=> new imcaassingnlecturer(),
       "1mcaviewlecturer":(BuildContext context)=> new imcaviewlecturer(),
       "1mcaviewstudent":(BuildContext context)=> new imcaviewstudent(),
       "2mcaaddsuject":(BuildContext context)=> new iimcaaddsubject(),
       "3mcaaddsubject":(BuildContext context)=> new iiimcaaddsubject(),
       "admindetail":(BuildContext context)=> new admindetail(),
       "addsubject":(BuildContext context)=> new addsubject(),
        "addnewadmin":(BuildContext context)=> new addnewadmin(),
        "addgenstudent":(BuildContext context)=> new addgenstudent(),
       
      



       
    },
  ));
}

class ask_page extends StatefulWidget {
  @override
  ask_pageState createState() => ask_pageState();
}

class ask_pageState extends State<ask_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Column(
      children: <Widget>[
        new Container(
          color: Colors.green,
          margin: EdgeInsets.only(top: 50.0),
        )
      ],
    ));
  }
}

