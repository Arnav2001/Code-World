import 'package:code_world/palette.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'VerifyScreen.dart';
import 'database.dart';
import 'title.dart';

class Register extends StatefulWidget {
  const Register({required this.onSignInPressed, required ValueKey<String> key}) : super(key: key);

  final VoidCallback onSignInPressed;

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String? _name;
  String? _phoneNo;
  String ?_email;
  String ?_password;
  String image="";
  List list=[];
  bool isVerified = false;

  var number;

  String? _reEnterPassword;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    Widget buildName(){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Username',
            style: TextStyle(
                color: Colors.white,
                fontSize: height/50,
                fontWeight: FontWeight.bold
            ),),
          SizedBox(height: height/90,),
          Container(
            width: width/1.1,
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
            height: height/14,
            child: TextField(
              maxLines: 1,
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.name,
              style: TextStyle(
                  color: Colors.black87
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: height/50),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Palette.darkBlue,
                  ),
                  hintText: 'Your Name',
                  hintStyle: TextStyle(
                      color: Colors.black38
                  )
              ),
              onChanged: (value){
                setState(() {
                  _name = value.trim();
                });
              },
            ),
          )
        ],
      );
    }
    Widget buildPhoneNo(){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Phone Number',
            style: TextStyle(
                color: Colors.white,
                fontSize: height/50,
                fontWeight: FontWeight.bold
            ),),
          SizedBox(height: height/90,),
          Container(
            width: width/1.1,
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
            height: height/14,
            child: TextField(
              keyboardType: TextInputType.phone,
              style: TextStyle(
                  color: Colors.black87
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: height/50),
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Palette.darkBlue,
                  ),
                  hintText: 'Phone Number',
                  hintStyle: TextStyle(
                      color: Colors.black38
                  )
              ),
              onChanged: (value){
                setState(() {
                  _phoneNo = value.trim();
                  number = int.parse(_phoneNo!);
                });
              },
            ),
          )
        ],
      );
    }
    Widget buildEmail(){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Email',
            style: TextStyle(
                color: Colors.white,
                fontSize: height/50,
                fontWeight: FontWeight.bold
            ),),
          SizedBox(height: height/90,),
          Container(
            width: width/1.1,
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
            height: height/14,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                  color: Colors.black87
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: height/50),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Palette.darkBlue,
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
    Widget buildPassword(){
      return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Password',
            style: TextStyle(
                color: Colors.white,
                fontSize: height/50,
                fontWeight: FontWeight.bold
            ),),
          SizedBox(height: height/90,),
          Container(
            width: width/1.1,
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
            height: height/14,
            child: TextField(
              maxLines: 1,
              onChanged: (value){
                setState(() {
                  _password = value.trim();

                });
              },
              style: TextStyle(
                  color: Colors.black87
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: height/50),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Palette.darkBlue,
                  ),

                  hintText: 'Password',
                  hintStyle: TextStyle(
                      color: Colors.black38
                  )
              ),
              obscureText: true,


            ),
          )
        ],
      );
    }
    Widget buildReEnterPassword(){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Confirm Password',
            style: TextStyle(
                color: Colors.white,
                fontSize: height/50,
                fontWeight: FontWeight.bold
            ),),
          SizedBox(height: height/90,),
          Container(
            width: width/1.1,
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
            height: height/14,
            child: TextField(
              obscureText: true,
              style: TextStyle(
                  color: Colors.black87
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: height/50),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Palette.darkBlue,
                  ),
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(
                      color: Colors.black38
                  )
              ),
              onChanged: (value){
                setState(() {
                  _reEnterPassword = value.trim();
                });
              },
            ),
          )
        ],
      );
    }

    return Container(
      height: height,
      width: width,
      alignment: Alignment.topCenter,
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscrollIndicatorNotification){
          overscrollIndicatorNotification.disallowIndicator();
          return true;
        },
        child: ListView(
          physics: new BouncingScrollPhysics(),
          children: [
            Container(
              height: height,
              width: width,
              child: Column(
                children: [
                  Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: height/10,left: width/10),
                        child: LoginTitle(
                          title: 'Create\nAccount',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height/50,),
                  buildName(),
                  SizedBox(height: height/100,),
                  buildPhoneNo(),
                  SizedBox(height: height/100,),
                  buildEmail(),
                  SizedBox(height: height/100,),
                  buildPassword(),
                  SizedBox(height: height/100,),
                  buildReEnterPassword(),
                  SizedBox(height: height/100,),
                  Padding(
                    padding: EdgeInsets.only(top: height/80,left: width/20),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right:width/4),
                          child: Text('Sign up',
                            style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Palette.darkBlue),),
                        ),
                        SizedBox(height: height/180,),
                        Padding(
                          padding: EdgeInsets.only(left: width/6),
                          child: Container(
                            height: 60,
                            width: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape:BoxShape.circle,
                              color: Palette.darkBlue,

                            ),
                            child: IconButton(onPressed: (){
                              signUp(_email!, _password!);
                            },
                              color: Colors.white,
                              icon: Icon(Icons.arrow_forward),),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      splashColor: Colors.white,
                      onTap: () {
                        widget.onSignInPressed?.call();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left:width/20),
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
  signUp(String _email,String _password) async{
    if(_email == null || _password == null ||_name == null ||_phoneNo ==null || _reEnterPassword == null){
       Fluttertoast.showToast(
        msg: "Fill All Entries",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
    }else{
      if( _password != _reEnterPassword){
         Fluttertoast.showToast(
        msg: "Password Does Not Match",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
      }else{
        try{
          await auth.createUserWithEmailAndPassword(email: _email, password: _password).then(
                  (value) async{Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => VerifyScreen()));
                  User? user = auth.currentUser;
                  await DatabaseService(uid: user!.uid).updateUserData(_name!, _email, number,image,list,isVerified);});

        } on FirebaseAuthException catch(error){
          Fluttertoast.showToast(
        msg: error.message!,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
        }
      }
    }
  }
}