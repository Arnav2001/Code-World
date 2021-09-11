import 'package:code_world/palette.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toast/toast.dart';



class ResetScreen extends StatefulWidget {
  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  String _email;
  final auth = FirebaseAuth.instance;
  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Email',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),),
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Palette.darkOrange,
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
            onChanged: (value){
              setState(() {
                _email = value.trim();
              });
            },
          ),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Container(
      decoration: BoxDecoration(
          gradient:
          new SweepGradient(colors: [Palette.lightBlue,Palette.darkBlue, Palette.lightBlue])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              height: height * 0.15,
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.15),
              height: height * 0.85,
              child: ListView(
                children: [
                  SizedBox(height: height * 0.08),
                  Text(
                    'reset password'.toUpperCase(),
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Center(
                    child: Container(
                      height: 1,
                      width: width * 0.8,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.15,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: buildEmail(),
                  ),
                  SizedBox(
                    height: height * 0.08,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: ()async{
                        if(_email == null){
                          Toast.show('Invalid Input',context,gravity: Toast.TOP,duration: Toast.LENGTH_SHORT);
                        }else{
                          try{
                            await auth.sendPasswordResetEmail(email: _email);
                            Navigator.of(context).pop();
                          } on FirebaseAuthException catch(error){
                            Toast.show(error.message,context,gravity: Toast.TOP,duration: Toast.LENGTH_SHORT);
                          }
                        }


                      },
                      child: Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 26, vertical: 10),
                        decoration: BoxDecoration(
                            gradient: new LinearGradient(
                                colors: [Palette.darkBlue, Palette.lightBlue]),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  color: Colors.blue[200],
                                  offset: Offset(2, 2))
                            ]),
                        child: Text(
                          "Reset".toUpperCase(),
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.7),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}