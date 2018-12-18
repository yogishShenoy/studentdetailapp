import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
final TextEditingController _idClear = new TextEditingController();
final TextEditingController _passwordClear = new TextEditingController();
final FirebaseDatabase database=FirebaseDatabase.instance;
String txtid,txtpassword,stdid,name,errorid="",errorpassword="";

class log_student extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("STUDENT LOGIN"),
        centerTitle: true,
      ),
      body: student_log_page(),
    );
  }
}

class student_log_page extends StatefulWidget {
  @override
  _admin_log_pageState createState() => _admin_log_pageState();
}

class _admin_log_pageState extends State<student_log_page> {
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
                      erroridfun();
                    },
                    controller: _idClear,
                    onChanged: (val){
                      txtid=val;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter student id",
                      labelText: "Student ID",
                      helperText: "$errorid",
                      helperStyle: TextStyle(color: Colors.red),
                      enabledBorder: OutlineInputBorder(borderSide:BorderSide(style: BorderStyle.solid)),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(top: 10.0),
                  //padding: EdgeInsets.only(top: 10.0),
                  child: TextField(
                    onTap: (){
                      errorpassfun();
                    },
                   
                    controller: _passwordClear,
                    onChanged: (val){
                      txtpassword=val;
                    },
                    decoration: InputDecoration(
                      helperText: "$errorpassword",
                      helperStyle: TextStyle(color: Colors.red),
                      labelText: "Password",
                      hintText: "Enter your password",

                      enabledBorder: OutlineInputBorder(borderSide:BorderSide(style: BorderStyle.solid)),
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
                           Navigator.of(context).pushNamed("logged_student");
                         login();
                         print(txtid);
                         print(txtpassword);
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
                            errorid="";
                            errorpassword="";
                            txtid="";
                            txtpassword="";
                            _idClear.clear();
                            _passwordClear.clear();
                          }),
                    )
                  ],
                ),
              ],
            )),
          ],
        )));
  }
  erroridfun(){
    setState(() {
          errorid="";
        });
  }
  errorpassfun(){
    setState(() {
          errorpassword="";
        });
  }
 Future<Object> login() async{
   setState(() {
        
      
                Object studentdata;
                Object key;
                if(txtid==""||txtpassword==""||txtid==null||txtpassword==null){
                  if(txtid==null||txtid==""){
                    errorid="* PLEASE ENTER YOUR ID";
                  }
                  if(txtpassword==null||txtpassword==""){
                     errorpassword="* PLEASE ENTER YOUR PASSWORD";
                  }
                }else if(txtid!=""&&txtpassword!=""){
                    database.reference().child("college/class/IMCA/students/$txtid").once().then((DataSnapshot snapshot){
                    print(studentdata.toString());
                    //stddata=snapshot.value.toString();
                    key=snapshot.key.toString();
                    stdid= snapshot.value['id'];
                    name=snapshot.value['name'];
                
                if(key==txtid && stdid.toString()==txtpassword){
                  Navigator.of(context).pushNamed("logged_student");
                  _idClear.clear();
                  _passwordClear.clear();
                  txtid=null;
                  txtpassword=null;
                  }else{
                  SnackBar(content: Text("check"),);
                }
                
                

  });
                }
});}
}