import 'dart:async';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_world/loading.dart';
import 'package:code_world/palette.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'UpdateProfile.dart';


class ProfileScreen extends StatefulWidget {
  @override

  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String Name = "Name";
  String Email = "Email";
  int PhoneNo = 100;
  var image;
  String ImageUrl;
  bool loading = true;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    retrievingData();
    return loading?Loading():Scaffold(

      appBar: AppBar(
          backwardsCompatibility: false,
        elevation: 0.0,
          backgroundColor: Palette.darkOrange,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).pop();
          },

        ),actions: [
        TextButton(
          child:Text("Edit",
            style: TextStyle(
                fontSize: 15,
                letterSpacing: 1.2,
                color: Colors.white,
            fontWeight: FontWeight.bold),),
      onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context)=> EditProfilePage()));
      },
    ),
      ]
      ),
      body: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  alignment: Alignment.center,
                    child: Stack(
                  children: [
                    Positioned( bottom: height/2.5,
                        child: buildEmail()),
                    Positioned( bottom: height/3.7,
                      child: buildName(),
                    ),
                    Positioned( bottom: height/7,
                      child: buildPhoneNo(),),
                  ],
                ),),
              ),





              CustomPaint(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
                painter: HeaderCurvedContainer(),
              ),
              Positioned(
                top: 10,
                  child:Column(
                children: [
                  Padding(padding: EdgeInsets.all(20),
                  child: Text("Profile",style: TextStyle(
                    fontSize: 35,
                    letterSpacing: 1.5,color: Colors.white,fontWeight: FontWeight.bold
                  ),),),
                  
                  Container(
                    width: 150,
                    height: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: FadeInImage.assetNetwork(
                          placeholder: 'assets/profileImg.jpg',
                          image: ImageUrl,fit:BoxFit.cover,) ,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width: 5),
                      shape: BoxShape.circle,
                      color: Colors.white
                     ),
                  )
                ],
              )),
            ],
        ),
          ),
    );
  }
  Widget buildEmail(){
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Email',
          style: TextStyle(
              color: Colors.black,
              fontSize: 15,
          ),),
        SizedBox(height: MediaQuery.of(context).size.height/90),
        Container(
          width: width/1.075,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: height/15,
          padding: EdgeInsets.symmetric(
                    horizontal: width/50,
                    vertical: height/50
                      ),
          child:Text(Email,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
              color: Colors.black87,
              fontSize: 18.0,
            )
          ),
        )
      ],
    );
  }
  Widget buildName(){
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Username',
          style: TextStyle(
              color: Colors.black,
              fontSize: 15,
          ),),
        SizedBox(height:MediaQuery.of(context).size.height/90,),
        Container(
            width: width/1.075,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 6,
                      offset: Offset(0,2)
                  )
                ]
            ),
          height: height/15,
          padding: EdgeInsets.symmetric(
              horizontal: width/50,
              vertical: height/50
          ),
            child: Text(Name!=null?Name:"Name",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87
                )),
            ),

      ],
    );
  }
  Widget buildPhoneNo(){
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Phone Number',
          style: TextStyle(
              color: Colors.black,
              fontSize: 15,
          ),),
        SizedBox(height:MediaQuery.of(context).size.height/90,),
        Container(
          width: width/1.075,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: height/15,
          padding: EdgeInsets.symmetric(
              horizontal: width/50,
              vertical: height/50
          ),
         child: Text(PhoneNo!=null?PhoneNo.toString():"Phone No",
             style: TextStyle(
               decoration: TextDecoration.none,
               color: Colors.black87,
               fontWeight: FontWeight.bold,
               fontSize: 18.0,
             )),
        )
      ],
    );
  }
  Future retrievingData(){
    final firestoreInstance = FirebaseFirestore.instance;
    var firebaseUser = FirebaseAuth.instance.currentUser;
    firestoreInstance.collection("userInfo").doc(firebaseUser.uid).get().then((value){
      setState(() {
        Name = value.data()["name"];
        PhoneNo = value.data()["phoneNo"];
        Email = value.data()["email"];
        ImageUrl = value.data()["image"];
        loading = false;
      });
    });
  }

}

class HeaderCurvedContainer extends CustomPainter{
  @override
  void paint(Canvas canvas,Size size){
    Paint paint = Paint()..color = Palette.darkOrange;
    Path path = Path()..relativeLineTo(0, 150)..quadraticBezierTo(size.width/2, 200, size.width, 150)..relativeLineTo(0, -150)..close();
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate)=>false;
}