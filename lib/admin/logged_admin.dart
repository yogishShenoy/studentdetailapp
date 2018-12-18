import 'package:flutter/material.dart';
import 'package:student/admin/admin.dart';
String selected;


class logged_admin extends StatelessWidget {
  var list=['ADD','UPDATE','VIEW','DELETE'];
  var classlist= ['I-MCA','II-MCA','III-MCA'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("ADMIN PAGE"),
        centerTitle: true,
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader( 
              accountName: new Text("$name"),
              currentAccountPicture: new GestureDetector(
               child: CircleAvatar(
                backgroundImage: NetworkImage("http://www.anaivanovic.com/sites/default/files/styles/flexslider_full_mobile/public/profile.jpg?itok=50Q_EqHf"),
                backgroundColor: Colors.green,
                child: Text(""),
              ),
              onTap: (){Navigator.of(context).pop();
              Navigator.of(context).pushNamed("admindetail");
              },
              ),
              
              
              accountEmail: Text("yogishshenoy027@gmail.com"),
            ),
            // new ListTile(
            //   title: Text("hai"),
            //   trailing: Icon(Icons.screen_lock_portrait),
            // ),
            new ListTile(
              title:  Text("LECTURER",style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("slidelecturer");},
              trailing: Icon(Icons.person),

            ),
            new Divider(height: 0,),
            // new ExpansionTile(
             
            //   title: Text("LECTURER") ,
               
            //   children: list.map((val)=>new ListTile(title: new Text(val),onTap: (){
            //    if(val=="ADD"){Navigator.of(context).pushNamed("slidelecturer");}
            //   },)).toList(),
            
            // ),
            // //  new DropdownButton<String>(

            // //    isExpanded: true,
            // //   hint: Text("LECTURERS"),
            // //   items: ['ADD','UPDATE','VIEW','DELETE'].map((String dropdownitem){
            // //          return DropdownMenuItem<String>(
            // //            value: dropdownitem,
            // //            child: Text(dropdownitem),
                       
            // //          );

            // //   }).toList(),
            // //   onChanged: (String newvalue){
            // //    selected=newvalue;
            // //   },
            // //   value: selected,
                 
            
            // // ),
            // new ExpansionTile(
             
            //   title: Text("SUBJECT") ,
               
            //   children: list.map((val)=>new ListTile(title: new Text(val),onTap: ()=>print("$val"),)).toList(),
            
            // ),
            new ExpansionTile(
             
            title: Text("CLASS",style:TextStyle(fontWeight: FontWeight.bold,),), 
               
            children: classlist.map((val)=>new ListTile(title: new Text(val),
            onTap:(){ 
              if (val=='I-MCA') {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("1mca");
                
            } if(val=='II-MCA'){
              Navigator.of(context).pop();
               Navigator.of(context).pushNamed("2mca");
               
            }if(val=='III-MCA'){
              Navigator.of(context).pop();
               Navigator.of(context).pushNamed("3mca");
               
            
            
            
            }},)).toList(),
            
          ),
          new Divider(height: 0,),
            
            new ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
      body: admin_page(),
    );
  }
}

class admin_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 25),
      children: <Widget>[
        new Row(
          children: <Widget>[
             Padding(padding: EdgeInsets.only(right: 12),),
             new GestureDetector(
              // onTap:  (){Navigator.of(context).pushNamed("");}, 
              child:Card(shape: OutlineInputBorder(),
             //child:Flexible(
              child: Stack(
                children: <Widget>[
                  new IconButton(
                splashColor: Colors.lightBlue,
                iconSize: 130,
              icon: Icon(Icons.people_outline),
              color: Colors.blueGrey,
             onPressed: (){Navigator.of(context).pushNamed("addnewadmin");},
            ),
            new Positioned(
              bottom: 10,
              left: 25,
               child:Text("ADD ADMIN",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(padding: EdgeInsets.only(top: 50),),
            
                ],
            
              ),
              
            ),
             ),
            Padding(padding: EdgeInsets.only(left: 25),),
             new GestureDetector(
               //onTap: (){Navigator.of(context).pushNamed("slidelecturer");},
              child:Card( shape: OutlineInputBorder(),
              
             // Flexible(
               child: Stack(
                 children:<Widget>[
                  new IconButton(
                    splashColor: Colors.lightBlue,
                 iconSize: 130,
                 color: Colors.blueGrey,
              icon: Icon(Icons.people),
             onPressed: (){Navigator.of(context).pushNamed("slidelecturer");},
            ),
             new Positioned(
              bottom: 10,
              left: 15,
               child:Text("ADD LECTURER",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
                 ]
               ),
               
             

            ),
             ),
            
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 15),),
        new Row(
          
          children: <Widget>[
             Padding(padding: EdgeInsets.only(right: 12,top: 25),),
            new Card( shape: OutlineInputBorder(),
            // Flexible(
              child: Stack(
                children: <Widget>[
                  new IconButton(
                splashColor: Colors.lightBlue,
                iconSize: 130,
              icon: Icon(Icons.person_add),
              color: Colors.blueGrey,
              onPressed: (){Navigator.of(context).pushNamed("addgenstudent");},
            ),
            new Positioned(
              bottom: 10,
              left: 17,
               child:Text("ADD STUDENT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(padding: EdgeInsets.only(top: 50),),
            
                ],
            
              ),
              
            ),
            Padding(padding: EdgeInsets.only(left: 25,),),
             new Card(//margin: EdgeInsets.all(20),
             shape: OutlineInputBorder(),
            //  Flexible(
               child: Stack( 
                 children:<Widget>[
                  new IconButton(
                    splashColor: Colors.lightBlue,
                 iconSize: 130,
                 color: Colors.blueGrey,
              icon: Icon(Icons.subject),
              onPressed: (){Navigator.of(context).pushNamed("addsubject");},
            ),
             new Positioned(
              bottom: 10,
              left: 20,
               child:Text("ADD SUBJECT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
                 ]
               ),
               
             

            ),
            
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 15),),
         new Row(
          children: <Widget>[
             Padding(padding: EdgeInsets.only(right: 12),),
            new Card(
              shape: OutlineInputBorder(),
            // Flexible(
              child: Stack(
                children: <Widget>[
                  new IconButton(
                splashColor: Colors.lightBlue,
                iconSize: 130,
              icon: Icon(Icons.event_note),
              color: Colors.blueGrey,
              onPressed: (){Navigator.of(context).pushNamed("");},
            ),
            new Positioned(
              bottom: 3,
              left: 23,
               child:Text("CLIP_BOARD",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(padding: EdgeInsets.only(top: 50),),
            
                ],
            
              ),
              
            ),
            Padding(padding: EdgeInsets.only(left: 25),),
             new Card(
               shape:OutlineInputBorder(),
              // Flexible(
               child: Stack(
                 children:<Widget>[
                  new IconButton(
                 iconSize: 130,
                 splashColor: Colors.lightBlue,
                 color: Colors.blueGrey,
              icon: Icon(Icons.event),
              onPressed: (){Navigator.of(context).pushNamed("");},
            ),
             new Positioned(
              bottom: 3,
              left: 48,
               child:Text("EVENT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
                 ]
               ),
               
             

            ),
            
          ],
        ),
       
        //  new Text("ADD ADMIN"),
        // new Text("ADD LECTURER"),
       
      //   new Container(
      //     margin: EdgeInsets.only(top: 60.0, right: 40.0, left: 40.0),
      //     child: new RaisedButton(
      //       child: Text("ADD LECTURER"),
      //       shape: RoundedRectangleBorder(),
      //     ),
      //   ),
      //   new Container(
      //     margin: EdgeInsets.only(top: 30.0, right: 40.0, left: 40.0),
      //     child: new RaisedButton(
      //       child: Text("ADD STUDENT"),
      //       shape: RoundedRectangleBorder(),
      //       onPressed: ()=>Navigator.of(context).pushNamed("add_student"),
      //     ),
      //   ),
      //   new Container(
      //     margin: EdgeInsets.only(top: 30.0, right: 40.0, left: 40.0),
      //     child: new RaisedButton(
      //       child: Text("DELETE LECTURER"),
      //       shape: RoundedRectangleBorder(),
      //     ),
      //   ),
      //   new Container(
      //     margin: EdgeInsets.only(top: 30.0, right: 40.0, left: 40.0),
      //     child: new RaisedButton(
      //       child: Text("DELETE STUDENT"),
      //       shape: RoundedRectangleBorder(),
      //     ),
      //   )
      ],
    );
  }
}
