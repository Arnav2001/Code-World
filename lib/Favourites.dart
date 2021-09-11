import 'package:app_settings/app_settings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_world/loading.dart';
import 'package:code_world/palette.dart';
import 'package:connectivity/connectivity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'InfoProvider.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({Key key}) : super(key: key);

  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  List FavList= [];
  bool fav;
  int count;
  String Name;
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
    {"color": Color(0xffda2c7d)},
    {"color": Color(0xff8434b3)},
    {"color": Color(0xff535cd4)},
    {"color": Color(0xffbc1c4c)},
  ];
  List topic=[
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
    "Structure",
    "Singly Linked List",
    "Doubly Linked List",
    "Circular Linked List",
    "Stack",
    "Simple Queue",
    "Circular Queue",
    "Double Ended Queue",
    "Priority Queue",
    "Tree",
    "Graph",
    "Binary Tree",
    "Binary Search Tree",
    "AVL Tree",
    "Threaded Tree",
    "Dynamic Programming",
    "File Handling",
    "Backtracking",
    "Greedy Algorithms",
    "Hashing",
    "Heaps",
  ];

  int indexes;
bool loading = true;
  bool internetCheck = true;


  _checkInternetConnectivity()async{
    var result = await Connectivity().checkConnectivity();
    setState(() {
      if(result == ConnectivityResult.wifi|| result == ConnectivityResult.mobile){
        setState(() {
          internetCheck = false;
        });
      }else{
        internetCheck = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
      _checkInternetConnectivity();
    listBuilder ()async{
      final firestoreInstance = FirebaseFirestore.instance;
      var firebaseUser = FirebaseAuth.instance.currentUser;
      firestoreInstance.collection("userInfo").doc(firebaseUser.uid).get().then((value){
        if(value.data()["list"].contains(Name)==true){

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
        setState(() {
        });
      });
    }
    final firestoreInstance = FirebaseFirestore.instance;
    var firebaseUser = FirebaseAuth.instance.currentUser;

    firestoreInstance.collection("userInfo").doc(firebaseUser.uid).get().then((value){
    setState(() {
      loading = false;
      fav = (value.data()["list"].isEmpty)?false:true;
      FavList =value.data()["list"];
    });
    });
    return internetCheck?AdvanceCustomAlertInternet():loading?Loading():Scaffold(
      appBar:AppBar(

        backgroundColor: Colors.white,
          /*title:Text('Favourite',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.start,),*/
        elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back,color: Palette.darkBlue,),
        onPressed: ()=>Navigator.pop(context),
      ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),

        body:!fav? Container(
          height: height,
          width: width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0,bottom: 5,top: 10),
                child: Text('FAVOURITE',
                  style:TextStyle(
                      fontSize: 30,
                      color: Palette.lightBlue,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:30.0,bottom: 20),
                child: Text('Your Favourite Topics',
                  style:TextStyle(
                      color: Palette.lightBlue,
                      fontSize: 18,
                      letterSpacing: 1),),
              ),
              SizedBox(
                height: height/10,
              ),
              Center(child: Icon(Icons.favorite,color: Colors.red,size: 300,)),
            ],
          ),
        ):Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0,bottom: 5,top: 10),
                child: Text('FAVOURITE',
                  style:TextStyle(
                      fontSize: 30,
                      color: Palette.lightBlue,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:30.0,bottom: 20),
                child: Text('Your Favourite Topics',
                  style:TextStyle(
                      color: Palette.lightBlue,
                      fontSize: 18,
                      letterSpacing: 1),),
              ),
              Expanded(
                child: Container(
                  height: height,
                  width: width,
                  child: GridView.builder(
                    itemCount: FavList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(child:Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Card(
                          color: data[(topic.indexOf(FavList[index]))]["color"],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
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
                                                topLeft: Radius.circular(30),
                                                bottomLeft: Radius.circular(30),
                                                bottomRight: Radius.circular(30)),
                                            color: Color.fromRGBO(255, 255, 255, 0.38)),
                                        padding: EdgeInsets.all(8),
                                        child: GestureDetector(child:Icon(Icons.favorite,
                                            color: Colors.white,size: 30,),
                                          onTap: (){
                                            listBuilder();
                                            setState(() {
                                              Name = FavList[index];
                                            });
                                          },)
                                      )
                                    ],
                                  ),
                                )
                                ,Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.only(top: height/40,left: width/70,right: width/70),
                                    child: Text(FavList[index]
                                      ,textAlign: TextAlign.center,style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white),
                                    )),

                              ],
                            ),
                          ),
                        ),
                      ),
                        onTap: () async{
                          setState(() {
                            Name = FavList[index];
                          });
                          SharedPreferences prefs = await SharedPreferences.getInstance();
                          prefs.setString('info', Name);
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> InfoProvider()));},
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
    );

}
}
class AdvanceCustomAlertInternet extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: ()async=>false,
      child: Container(
        color: Colors.blue,
        height: height,
        width: width,
        alignment: Alignment.center,
        child: Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4)
          ),
          child: Stack(
            overflow: Overflow.visible,
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.only(left:10,top:70,right:10,bottom:10),
                  child: Column(
                    children: [
                      Text('No internet',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                      SizedBox(height: 5,),
                      Text("You're not connected to a network",style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
                      SizedBox(height: 10,),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:[
                            FlatButton(onPressed: (){
                              SystemNavigator.pop();
                            },
                              child: Text('Exit',style: TextStyle(color: Palette.darkBlue),),),
                            FlatButton(onPressed: ()async{
                              AppSettings.openWIFISettings();
                            },
                              child: Text('Open Settings', style: TextStyle(color: Palette.darkBlue),),),
                          ]),
                    ],
                  ),
                ),
              ),
              Positioned(child: CircleAvatar(
                backgroundColor: Palette.darkBlue,
                radius: 50,
                child: Icon(Icons.signal_cellular_connected_no_internet_4_bar,size: 50, color: Colors.white,),
              ),
                top: -50,)
            ],
          ),
        ),
      ),
    );

  }

}