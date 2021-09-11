import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_world/palette.dart';
import 'package:code_world/title.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';
import 'ForgotPassword.dart';
import 'HomePage.dart';


class SignIn extends StatefulWidget {

  const SignIn({Key key,
    @required this.onRegisterClicked,
  }) : super(key: key);
  final VoidCallback onRegisterClicked;


  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> with SingleTickerProviderStateMixin{

  final auth = FirebaseAuth.instance;
  String _email;
  String _password;
  bool isRememberMe= false;



  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    Widget buildEmail(){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Email',
            style: TextStyle(
                color: Palette.darkBlue,
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.centerLeft,
            width: width/1.1,
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
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Password',
            style: TextStyle(
                color: Palette.darkBlue,
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.centerLeft,
            width: width/1.1,
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
              obscureText: true,
              style: TextStyle(
                  color: Colors.black87
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Palette.darkBlue,
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      color: Colors.black38
                  )
              ),
              onChanged: (value){
                setState(() {
                  _password = value.trim();
                });
              },
            ),
          )
        ],
      );
    }

    Widget buildPasswordForgotButton(){
      return Container(
        alignment: Alignment.centerRight,
        width: width,
        child: FlatButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ResetScreen()));
          },
          padding: EdgeInsets.only(right: width/30),
          child: Text(
            'Forgot Password?',
            style: TextStyle(
                color: Palette.darkBlue,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      );
    }

    Widget buildRememberCb(){
      return Container(
        height: 20,
        child: Row(
          children: <Widget>[
            Theme(
              data: ThemeData(unselectedWidgetColor: Palette.darkBlue),
              child: Checkbox(
                value: isRememberMe,
                checkColor: Colors.white,
                activeColor: Palette.darkBlue,
                onChanged: (value){
                  setState(() {
                    isRememberMe = value;
                  });
                },
              ),
            ),
            Text('Remember me',
              style: TextStyle(
                  color: Palette.darkBlue,
                  fontWeight: FontWeight.bold
              ),)
          ],
        ),
      );
    }
    return Container(
        child: Padding(
          padding: EdgeInsets.all(width/30),
          child: Column(
            children: [
              const Expanded(
                flex: 3,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: LoginTitle(
                      title: 'Welcome',
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                  child: NotificationListener<OverscrollIndicatorNotification>(
                    onNotification: (OverscrollIndicatorNotification overscrollIndicatorNotification){
                      overscrollIndicatorNotification.disallowGlow();
                      return;
                    },
                    child: SingleChildScrollView(
                        child: Container(
                          height: height/2,
                          width: width,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top:height/20,
                                  left: width/80,
                                  child: buildEmail()),
                              Positioned(
                                top: height/5.5,
                                  left: width/80,
                                  child: buildPassword()),
                              Positioned(
                                  bottom: height/6.5,
                                  child: buildRememberCb()),
                              Positioned(
                                  bottom: height/8,
                                  right: 0,
                                  child: buildPasswordForgotButton()),

                              Positioned(
                                bottom: height/20,
                                left: width/40,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right:width/2),
                                      child: Text('Sign in',
                                        style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Palette.darkBlue),),
                                    ),

                                    Container(
                                      height: 60,
                                      width: 60,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        shape:BoxShape.circle,
                                        color: Palette.darkBlue,

                                      ),
                                      child: IconButton(onPressed: (){
                                        signIn(_email, _password);
                                      },
                                        color: Colors.white,
                                        icon: Icon(Icons.arrow_forward),),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: height/30,
                                left: width/40,
                                child: InkWell(
                                  splashColor: Colors.white,
                                  onTap: () {
                                    widget.onRegisterClicked?.call();
                                  },
                                  child: const Text(
                                    'Sign up',
                                    style: TextStyle(
                                      fontSize: 16,
                                      decoration: TextDecoration.underline,
                                      color: Palette.darkBlue,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ),
                  ),
            ],
          ),
        ),
    );
  }


  signIn(String _email,String _password) async{
    bool isVerified ;
    if(_email == null || _password == null){
      Toast.show('Invalid Input',context,gravity: Toast.TOP,duration: Toast.LENGTH_SHORT);
    }else{
      final firestoreInstance = FirebaseFirestore.instance;
      var firebaseUser = FirebaseAuth.instance.currentUser;
      try{
        final auth =FirebaseAuth.instance;
        await auth.signInWithEmailAndPassword(email: _email, password: _password);
        firestoreInstance.collection("userInfo").doc(firebaseUser.uid).get().then((value)async{
          print('value is' + value.data()["email"]);
          isVerified = value.data()["isVerified"];
          if ((value.data()["isVerified"]) == true ){
            SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.setBool('remember', isRememberMe);
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => HomePage()));
          }
          else{
            Toast.show('Your have not verified your email register again',context,gravity: Toast.TOP,duration: Toast.LENGTH_LONG);
            firestoreInstance.collection("userInfo").doc(firebaseUser.uid).delete().then((_) => print('deleted successfully!!'));
            firebaseUser.delete();
          }
          print("you are verified: $isVerified");

        });
      } on FirebaseAuthException catch(error){
        Toast.show(error.message,context,gravity: Toast.TOP,duration: Toast.LENGTH_LONG);
      }
      print('user is: ${firebaseUser.uid}');



    }
  }
}

