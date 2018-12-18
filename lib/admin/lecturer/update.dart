import 'package:flutter/material.dart';

class updatelecturer extends StatefulWidget {
  @override
  _updatelecturerState createState() => _updatelecturerState();
}

class _updatelecturerState extends State<updatelecturer> {
  bool visibilitytag=false;

  // void changed(bool visibility, String field){
  //    if(field=="search"){
  //      visibilitytag=visibility;

  //    }

  // }
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(10),
    
      child: Card(
        margin: EdgeInsets.all(10),
        child: ListView(
          padding: EdgeInsets.all(10),
    
          children: <Widget>[
            
            new Container(
              padding: EdgeInsets.only(top:15,bottom:20),
              alignment: Alignment.center,
                child: Text("SEARCH BY LECTURER ID",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 20.0)),
            ),

            new TextField( 
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(style: BorderStyle.solid,)
                ),prefixIcon: Icon(Icons.person),labelText: "LECTURER ID",hintText: "Enter lecturer ID"
              ),

            ),
            Padding(padding: EdgeInsets.only(top: 10),),
            new RaisedButton(child: Text("SEARCH",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            color: Colors.green,
            onPressed: (){
              setState(() {
                 visibilitytag=true;             

                            });
            },
            ) , visibilitytag==true?
            new Container(
               child: Column(
               children: <Widget>[
                 Padding(padding: EdgeInsets.only(top:15),),
                     new Text("LECTURER DETAIL : 12345"),
                     Padding(padding: EdgeInsets.only(top:15),),
                      new TextField( 
                       decoration: InputDecoration(
                       border: OutlineInputBorder(
                       borderSide: BorderSide(style: BorderStyle.solid,)
                   ),prefixIcon: Icon(Icons.person),labelText: "LECTURER NAME",hintText: "Enter lecturer NAME"
                  ),
                  
                      ),
                      Padding(padding: EdgeInsets.only(top:15),),
                      new TextField( 
                       decoration: InputDecoration(
                       border: OutlineInputBorder(
                       borderSide: BorderSide(style: BorderStyle.solid,)
                   ),prefixIcon: Icon(Icons.person),labelText: "LECTURER ID",hintText: "Enter lecturer ID"
                  ),
                      ),
                      Padding(padding: EdgeInsets.only(top:15),),
                       new TextField( 
                       decoration: InputDecoration(
                       border: OutlineInputBorder(
                       borderSide: BorderSide(style: BorderStyle.solid,)
                   ),prefixIcon: Icon(Icons.person),labelText: "LECTURER ID",hintText: "Enter lecturer ID"
                  ),
                      ),
                      Padding(padding: EdgeInsets.only(top:15),),
                       new TextField( 
                       decoration: InputDecoration(
                       border: OutlineInputBorder(
                       borderSide: BorderSide(style: BorderStyle.solid,)
                   ),prefixIcon: Icon(Icons.person),labelText: "LECTURER ID",hintText: "Enter lecturer ID"
                  ),
                      ),
                      Padding(padding: EdgeInsets.only(top:15),),
                       new TextField( 
                       decoration: InputDecoration(
                       border: OutlineInputBorder(
                       borderSide: BorderSide(style: BorderStyle.solid,)
                   ),prefixIcon: Icon(Icons.person),labelText: "LECTURER ID",hintText: "Enter lecturer ID"
                  ),
                      ),
                ]
              ),
              //        
              //         ),
              //       ],
              //     )
              //   ],
              // ),
            )  : new Text("false"),
            new RaisedButton(child: Text("check"), onPressed: (){setState(() {
                          visibilitytag=false;
                        });} )
          ],

        ) ,

      ),
      
    );
  }
}