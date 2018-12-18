import 'package:flutter/material.dart';

class imcaaddsubject extends StatefulWidget {
  @override
  _imcaaddsubjectState createState() => _imcaaddsubjectState();
}

class _imcaaddsubjectState extends State<imcaaddsubject> {
  int numberOfSubjects = 0;

  Widget subjectsBuilder(int numberOfSubjects) {
    if (numberOfSubjects > 0) {
      return ListView.builder(
        itemBuilder: (BuildContext context, numberOfSubjects) {
         // Padding(padding:EdgeInsets.only(top: 10,bottom: 10));
          return new Container(
            padding: EdgeInsets.only(bottom: 5,top: 5),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left:2,right: 5),),
              
                new Text("${numberOfSubjects+1}:",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15),),

            
              new Flexible(
                 child:TextField(
            decoration: InputDecoration( border: OutlineInputBorder(
                          borderSide: BorderSide(style: BorderStyle.solid)),
                      labelText: "SUBJECT ID",
                     // hintText: "Enter number of subject ID",
                      ),
                      scrollPadding: EdgeInsets.only(top: 10,bottom: 10),
          ),
              
              ),
              Padding(padding: EdgeInsets.only(left: 5,right: 5),),
               new Flexible(
                 child:TextField(
            decoration: InputDecoration( border: OutlineInputBorder(
                          borderSide: BorderSide(style: BorderStyle.solid)),
                      labelText: "SUBJECT NAME",
                      //hintText: "Enter number of subject name",
                      ),
                      scrollPadding: EdgeInsets.only(top: 10,bottom: 10),
          ),

              ),
              Padding(padding: EdgeInsets.only(left: 5,right: 5),),
            ],
          ),
          );
         
        },
        itemCount: numberOfSubjects,
      );
    } else {
      return Text("");
    }
  }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(5),
//       child: Card(
//         child: ListView(
//           padding: EdgeInsets.all(10),
//           children: <Widget>[
//             Padding(
//               padding: EdgeInsets.only(top: 10),
//             ),
//             new TextField(
//               onSubmitted: (String value) {
//                       setState(() {
//                         numberOfSubjects = int.parse(value);
//                       });},
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                     borderSide: BorderSide(style: BorderStyle.solid)),
//                 labelText: "NUMBER OF SUBJECTS",
//                 hintText: "Enter number of subjects",
//               ),keyboardType: TextInputType.number,
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 15),
//             ),
//             new RaisedButton(
//               child: Text(
//                 "OK",
//                 style:
//                     TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//               ),
//               color: Colors.cyan,
//               onPressed: () {},
//             ),
           
            
           
//           ],
           
//         ),
         
        
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//       home: MyApp(),
//     ));

// class MyApp extends StatefulWidget {
//   @override
//   MyAppState createState() => MyAppState();
// }

// class MyAppState extends State<MyApp> {
//   int numberOfSubjects = 0;

//   Widget subjectsBuilder(int numberOfSubjects) {
//     if (numberOfSubjects > 0) {
//       return ListView.builder(
//         itemBuilder: (BuildContext context, numberOfSubjects) {
//           return TextField(
//             decoration: InputDecoration(hintText: "enter a text"),
//           );
//         },
//         itemCount: numberOfSubjects,
//       );
//     } else {
//       return SizedBox();
//     }
//   }

  @override
  Widget build(BuildContext context) {
    return
    Column(children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(5),
            // child: Card(
              child: ListView(
                padding: EdgeInsets.all(10),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  new TextField(
                    onSubmitted: (String value) {
                      setState(() {
                        numberOfSubjects = int.parse(value);
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(style: BorderStyle.solid)),
                      labelText: "NUMBER OF SUBJECTS",
                      hintText: "Enter number of subjects",
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15,bottom: 39),
                  ),
                
                  new Row(
                    children: <Widget>[
                      Padding(padding:EdgeInsets.only(left: 40)),
                      new Text("SUBJECT ID :",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16),),
                      Padding(padding:EdgeInsets.only(right: 105)),
                      new Text("NAME :",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16)),
                    ],
                  )
                ],
              ),
            // ),
          ),
        ),
        Expanded(
          flex: 2,
          child: subjectsBuilder(numberOfSubjects),
        )
      ]
      );
  }
  }

