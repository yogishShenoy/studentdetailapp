import 'package:flutter/material.dart';
import 'package:student/admin/class/3mca/addsubject.dart';

class iiimcaslide extends StatefulWidget {
  @override
  _iiimcaslide createState() => _iiimcaslide();
}

class _iiimcaslide extends State<iiimcaslide> with SingleTickerProviderStateMixin {
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
        title: Text("III-MCA"),
        centerTitle: true,
        bottom: new TabBar(
          unselectedLabelColor: Colors.white,
         labelColor: Colors.blue.shade900,
         indicatorColor: Colors.indigo,
         isScrollable: true,
          controller: controller,
          tabs: <Widget>[
             new Tab(icon: Icon(Icons.add),text: "ADD SUBJECTS",),
            new Tab(icon: Icon(Icons.add),text: "UPDATE SUBJECTS",),
            new Tab(icon: Icon(Icons.update),text: "ASSIGN LECTURER",),
            new Tab(icon: Icon(Icons.view_agenda),text: "VIEW LECTURERS",),
            new Tab(icon: Icon(Icons.delete),text: "VIEW STUDENTS",)
          ],

        ),
    ),
    body: TabBarView(
      controller: controller,
      children: <Widget>[
      new iiimcaaddsubject(),
      //  new updatelecturer(),
      //  new viewlecturer(),
      //  new dellecturer(),
      ],
    ),
      );
      
  
  }
}
