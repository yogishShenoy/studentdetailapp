import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:student/main.dart';
import 'package:student/ask_page.dart';
import 'package:firebase_database/firebase_database.dart';
final TextEditingController _idClear = new TextEditingController();
final TextEditingController _passwordClear = new TextEditingController();
final FirebaseDatabase database=FirebaseDatabase.instance;
String admin_id,adminid,txtid,txtkey,name="",errorid="",errorpassword="",mm;
var snack,k;
final scaffod_key = GlobalKey<ScaffoldState>();
bool _obscuretext=true;
//final scaffod_key1 = GlobalKey<ScaffoldState>();
class log_admin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffod_key,
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("ADMIN LOGIN"),
        centerTitle: true,
      ),
      body: admin_log_page(),
    );
  }
}

class admin_log_page extends StatefulWidget {
  @override
  _admin_log_pageState createState() => _admin_log_pageState();

}

class _admin_log_pageState extends State<admin_log_page> {
  
// next(){
// Navigator.of(context).pop();
// Navigator.of(context).pushNamed("logged_admin");
//   }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 70.0, right: 35.0, left: 40.0),
        child: Center(
            child: ListView(
          children: <Widget>[
            new Container(
                margin: EdgeInsets.only(left: 30.0, right: 105, bottom: 20.0),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new IconButton(
                      icon: Icon(
                        Icons.face,
                        color: Colors.white,
                        size: 90.0,
                      ),
                    ),
                  ],
                )),
            new Form(
                child: Column(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(top: 40.0, bottom: 10.0),
                  child: TextField(
                    onTap: (){
                      error_id();
                    },
                    controller: _idClear,
                          onChanged: (val) {
                    txtid = val;
            },
                    decoration: InputDecoration(
                      labelText: "Admin ID",
                      hintText: "Enter admin id",
                      helperText: "$errorid",
                      helperStyle: TextStyle(color: Colors.red),
                      border: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid,color: Colors.white))
                    ),
                    keyboardType: TextInputType.text,
                    // //validator: (String value){
                    //   if(value=="" || value ==null){
                    //     return "* Enter your admin Id";
                    //   }else{
                    //     return null;
                    //   }
                    // },
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(top: 10.0),
                  
                  
                  child: TextField(
                    onTap: (){
                      error_password();
                    },
                    controller: _passwordClear,
                     onChanged: (val) {
                    txtkey = val;
                    
            },
                    decoration: InputDecoration(
                      labelText: "password",
                      hintText: "Enter your password",
                      helperText: errorpassword,
                      helperStyle: TextStyle(color: Colors.red),suffixIcon: IconButton(icon: Icon(Icons.visibility),onPressed: (){toggle();},),
                     // enabledBorder: UnderlineInputBorder(),
                       border: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid,color: Colors.white))
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                ),
                new Row(
                  children: <Widget>[
                    new Container(
                      margin:
                          EdgeInsets.only(right: 30.0, top: 50.0, left: 15.0),
                      child: RaisedButton(
                        child: Text("LOGIN"),
                        color: Colors.green,
                        onPressed: () {
                          login();
                          // print(txtkey);
                          // print(txtid);
                          Navigator.of(context).pushNamed("logged_admin");
                          
                        },
                      ),
                    ),
                    new Container(
                      margin:
                          EdgeInsets.only(right: 10.0, top: 50.0, left: 30.0),
                      child: RaisedButton(
                        child: Text("CANCEL"),
                        color: Colors.red,
                        onPressed: () {
                          Navigator.of(context).pop();
                          setState(() {
                           errorid="";
                          errorpassword="";                           
                          });
                          
                        },
                      ),
                    )
                  ],
                ),
              ],
            )),
          ],
        )));
  }

  toggle(){
    setState(() {   
    if(_obscuretext==true)
   {
     _obscuretext=false;
     return false;
   }else if(_obscuretext==true)
   {
     _obscuretext=true;
     return true;
     }
    });

  }
error_id(){
  setState(() {
      errorid="";
    }); 
}
error_password(){
  setState(() {
      errorpassword="";
    });
  
}

// notlogged(){
//   Text("!! LOGIN FAILED PLEASE CHECK YOUR ID AND PASSWORD",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),);
// }

  Future<Object> login() async{
  
    mm=null;
    setState(() {
                Object admindata;
                Object key;
                 if(txtid==null&&txtkey==null || txtid==""&&txtkey==""){
                  if(txtid==null||txtid==""){
                    errorid="* PLEASE ENTER YOUR ID";
                  }
                  if(txtkey==null||txtkey==""){
                     errorpassword="* PLEASE ENTER YOUR PASSWORD";
                  } 
                }
                else if(txtid!=""&&txtkey!=""||txtid!=null&&txtkey!=null){
                  
                    k=database.reference().child("college/admin/$txtid").once().then((DataSnapshot snapshot){
                  print(admindata.toString());
                  admindata=snapshot.value.toString();
                  key=snapshot.key.toString();
                adminid= snapshot.value['id'];
                name=snapshot.value['name'];
                if(key==txtkey && adminid.toString()==txtid){
                  var snack=  SnackBar(duration: Duration(seconds: 2),content: 
                  new Row(
                    children: <Widget>[
                      new CircularProgressIndicator(),
                      new Text("LOGIN SUCESSFULL... Wait...",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                    ],
                  ),);
                 scaffod_key.currentState.showSnackBar(snack);
                  error_id();
                  error_password();
                 
                  k.whenComplete((){
                  Navigator.of(context).pushNamed("logged_admin");
                  _idClear.clear();
                  _passwordClear.clear();
                  txtid="";
                  txtkey="";
                  mm=null;
                });
                 
                   }});
                  mm="*";
                   
                }
                    if(mm=="*"){
                   print("i am txt id:$txtid");
                   print("$txtkey");
                     snack=  SnackBar(content:Text("!! LOGIN FAILED PLEASE CHECK YOUR ID AND PASSWORD",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),));
                     scaffod_key.currentState.showSnackBar(snack);
                     errorid=" * PLEASE CHECK YOUR ID";
                     errorpassword=" * PLEASE CHECK YOUR PASSWORD";
                     mm="";
                   }
    });
  
  }
  

                   
                  
                
                
                 
                
                // print(key);
                // print(txtkey);
                // print(admindata);
                // print(txtid);
                // rmobile=snapshot.value['phone'];
  
                 // var i=map.values.toList()[snapshot.value]["name"];
                    // data =snapshot.value;
                    // debugPrint("${data.values}");
                    // print(detail);
                    // print(key);
                    // exm=detail;
                    // print(rname);
                    // print(rmobile);
                   
                
}
