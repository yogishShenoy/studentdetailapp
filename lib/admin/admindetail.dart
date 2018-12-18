import 'package:flutter/material.dart';
class admindetail extends StatefulWidget {
  @override
  _admindetailState createState() => _admindetailState();
}

class _admindetailState extends State<admindetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
      ),
      body: 
      Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              color: Colors.black.withOpacity(0.6),
            ),
            clipper: getclipper(),
            ),
            new Positioned(
              width: 350.0,
              top: MediaQuery.of(context).size.height/13,
              child: Column(
                children: <Widget>[
                  new Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                        image: NetworkImage("http://www.anaivanovic.com/sites/default/files/styles/flexslider_full_mobile/public/profile.jpg?itok=50Q_EqHf"),
                        fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(75)
                      ),
                      boxShadow: [BoxShadow(blurRadius: 7,color: Colors.black)]
                    ),
                  ),
                 Padding(padding:EdgeInsets.only(top:10)),
                 new Text("PRANEETH SHETTY",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 20),),
                 Padding(padding:EdgeInsets.only(top:30,left:30 ,right: 30)),
                
                    new Row(
                   children: <Widget>[
                     
                     Padding(padding: EdgeInsets.only(left: 90,top: 30),),
                     new Text("ADMIN ID  :",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 20),),
                     Padding(padding: EdgeInsets.only(right: 15),),

                     new Text("1234",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 20),),
                   ],
                 ),
                 
                 new Row(
                   children: <Widget>[
                     Padding(padding: EdgeInsets.only(left: 90),),
                     new Text("ADMIN ID  :",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 20),),
                     Padding(padding: EdgeInsets.only(right: 10),),

                     new Text("1234",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 20),),
                   ],
                 ),
                 new Row(
                   children: <Widget>[
                     Padding(padding: EdgeInsets.only(left: 90),),
                     new Text("ADMIN ID  :",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 20),),
                     Padding(padding: EdgeInsets.only(right: 10),),

                     new Text("1234",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 20),),
                   ],
                 ),
                 new Row(
                   children: <Widget>[
                     Padding(padding: EdgeInsets.only(left: 90),),
                     new Text("ADMIN ID  :",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 20),),
                     Padding(padding: EdgeInsets.only(right: 10),),

                     new Text("1234",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 20),),
                   ],
                 ),
                 new Row(
                   children: <Widget>[
                     Padding(padding: EdgeInsets.only(left: 90),),
                     new Text("ADMIN ID  :",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 20),),
                     Padding(padding: EdgeInsets.only(right: 10),),

                     new Text("1234",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 20),),
                   ],
                 ),
                 Padding(padding: EdgeInsets.all(30),),
                 new RaisedButton(
            child: Text("EDIT PROFILE",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
            color: Colors.black,
            splashColor: Colors.brown,
             onPressed: (){},
          )
                ],
              ),
              
             
            ),
          
        ],
      ),
    );

    
      
  
  }
}

class getclipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path= new Path();

    path.lineTo(0.0,size.height/2.5 );
    path.lineTo(size.width+110, 0.0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(CustomClipper<Path>oldClipper){
    return true;
  }

}