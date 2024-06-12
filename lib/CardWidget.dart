import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_world/InfoProvider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CardWidget extends StatefulWidget {
  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  List data = [
    {"color": Color(0xfff3842b)},
    {"color": Color(0xffda2c7d)},
    {"color": Color(0xff8434b3)},
    {"color": Color(0xff535cd4)},
    {"color": Color(0xffbc1c4c)},
    {"color": Color(0xfff3842b)},
    {"color": Color(0xffda2c7d)},
    {"color": Color(0xff8434b3)},
    {"color": Color(0xff535cd4)},
    {"color": Color(0xffbc1c4c)},
    {"color": Color(0xfff3842b)},
    {"color": Color(0xffda2c7d)},
    {"color": Color(0xff8434b3)},
    {"color": Color(0xff535cd4)},
    {"color": Color(0xffbc1c4c)},
    {"color": Color(0xfff3842b)},

  ];


  List mainTopic = [
   "Header File",
    "Data type",
    "Variables",
    "Operators",
    "Specifiers",
    "Escape Sequence",
    "Control Statements",
    "Loops",
    "Typecasting",
    "Functions",
    "Array",
    "Pointers",
    "Calling",
    "Typedef",
    "Union",
    "Structure"
  ];
List check = [];

  final colorwhite = Colors.white;

  bool favColor = false;
  String? Name;
  bool loading = true;


  @override
  Widget build(BuildContext context) {
    final firestoreInstance = FirebaseFirestore.instance;
    var firebaseUser = FirebaseAuth.instance.currentUser;
    firestoreInstance.collection("userInfo").doc(firebaseUser!.uid).get().then((value){
      setState(() {
        check = value.data()!["list"];
        loading = false;
      });});

    listBuilder ()async{
      final firestoreInstance = FirebaseFirestore.instance;
      var firebaseUser = FirebaseAuth.instance.currentUser;
      firestoreInstance.collection("userInfo").doc(firebaseUser!.uid).get().then((value){
        if(value.data()!["list"].contains(Name)==true){

          firestoreInstance.collection("userInfo")
              .doc(firebaseUser.uid)
              .update({

            "list": FieldValue.arrayRemove([Name]),
          }).then((_) => print("Success"));
        }else{
          firestoreInstance.collection("userInfo")
              .doc(firebaseUser.uid)
              .update({
            "list": FieldValue.arrayUnion([Name]),
          }).then((_) => print("Success"));
        }
      });
    }

    return  Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: GridView.builder(
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(child:Padding(
            padding: const EdgeInsets.all(4.0),
            child: Hero(
              tag: mainTopic[index],
              child: Card(
                elevation: 10 ,
                color: data[index]["color"],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(35),
                                        bottomLeft: Radius.circular(35),
                                        bottomRight: Radius.circular(35)),
                                    color: Color.fromRGBO(255, 255, 255, 0.38)),
                                padding: EdgeInsets.all(8),
                                child: GestureDetector(
                                  child:(!check.contains((mainTopic[index])))?Icon(
                                  Icons.favorite_border,
                                    color: Colors.white, size: 30,
                                ):Icon(Icons.favorite,
                                    color: Colors.white,size: 30,),
                                onTap: (){
                                  listBuilder();
                                  setState(() {
                                    Name = mainTopic[index];
                                  });
                                },)
                              ),

                          ],
                        ),
                      )
                      ,Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(20),
                          child: Text(mainTopic[index]
                            ,textAlign: TextAlign.center,style: TextStyle(
                                fontSize: 20,
                                color: colorwhite),
                          )),

                    ],
                  ),
                ),
              ),
            ),
          ),
            onTap: () async{
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setString('info', mainTopic[index]);
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (BuildContext context, Animation animation,
                          Animation secondaryAnimation) {
                        return InfoProvider();
                      },
                      opaque: true,
                      barrierColor: Colors.white,
                      transitionDuration: Duration(milliseconds: 150),
                      transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation,
                          Widget child) {
                        return FadeTransition(
                          opacity: animation,
                          child: Align(
                            child: child,
                          ),
                        );
                      }));
              },
          );
        },
      ),
    );

  }

}