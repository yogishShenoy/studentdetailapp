import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:student/admin/slidelecturer.dart';
import 'package:student/admin/lecturer/addLecturer.dart';
import 'package:student/admin/lecturer/dellecturer.dart';
import 'package:student/admin/lecturer/update.dart';
import 'package:student/admin/lecturer/view.dart';

class slidelecturer extends StatefulWidget {
  @override
  _slidelecturer createState() => _slidelecturer();
}

class _slidelecturer extends State<slidelecturer> with SingleTickerProviderStateMixin {
    TabController controller;
  @override
    void initState(){
      super.initState();
     controller = new TabController(vsync: this,length:4);
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
        title: Text("LECTURER"),
        centerTitle: true,
        bottom: new TabBar(
          unselectedLabelColor: Colors.white,
         labelColor: Colors.blue.shade900,
         indicatorColor: Colors.indigo,
        //  isScrollable: true,
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: Icon(Icons.add),text: "LECTURER",),
            new Tab(icon: Icon(Icons.update),text: "UPDATE",),
            new Tab(icon: Icon(Icons.view_agenda),text: "VIEW",),
            new Tab(icon: Icon(Icons.delete),text: "DELETE",)
          ],

        ),
    ),
    body: TabBarView(
      controller: controller,
      children: <Widget>[
       new addlecturer(),
       new updatelecturer(),
       new viewlecturer(),
       new dellecturer(),
      ],
    ),
      );
      
  
  }
}
