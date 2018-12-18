import 'package:flutter/material.dart';
import 'package:student/admin/class/1mca/addsujects.dart';
import 'package:student/admin/class/1mca/assignlecturer.dart';
import 'package:student/admin/class/1mca/updatesubject.dart';
import 'package:student/admin/class/1mca/viewlecturer.dart';
import 'package:student/admin/class/1mca/viewstudent.dart';

class imcaslide extends StatefulWidget {
  @override
  _imcaslide createState() => _imcaslide();
}

class _imcaslide extends State<imcaslide> with SingleTickerProviderStateMixin {
    TabController controller;
  @override
    void initState(){
      super.initState();
     controller = new TabController(vsync: this,length:5);
}
  
  @override
  void dispose(){
    controller.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("I-MCA"),
        centerTitle: true,
        bottom: new TabBar(
          controller: controller,
         isScrollable: true,
         unselectedLabelColor: Colors.white,
         labelColor: Colors.blue.shade900,
         indicatorColor: Colors.indigo,
          tabs: <Widget>[
            new Tab(icon: Icon(Icons.add),text: "ADD SUBJECTS",),
            new Tab(icon: Icon(Icons.update),text: "UPDATE SUBJECTS",),
            new Tab(icon: Icon(Icons.assignment),text: "ASSIGN LECTURER",),
            new Tab(icon: Icon(Icons.group_add),text: "VIEW LECTURERS",),
            new Tab(icon: Icon(Icons.people),text: "VIEW STUDENTS",)
          ],

        ),
    ),
    body: TabBarView(
      controller: controller,
      children: <Widget>[
        new imcaaddsubject(),
        new imcaupdatesubject(),
        new imcaassingnlecturer(),
        new imcaviewlecturer(),
        new imcaviewstudent(),
      
      ],
    ),
      );
      
  
  }
}
