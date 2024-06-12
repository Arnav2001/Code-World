import 'dart:io';
import 'package:app_settings/app_settings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_world/LoginPage.dart';
import 'package:code_world/loading.dart';
import 'package:code_world/palette.dart';
import 'package:code_world/services/internet_checker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  String? name;
  int? phoneNo;
  String? _email="Email";
  String? _image;
  String? _name;
  int ?_phone;
  var imagePic;
  String? ImageUrl;
  bool loading = true;
  bool internetCheck = false;

@override
  void initState() {
    // TODO: implement initState

    InternetChecker().then((value)=>{
      setState(() {
        internetCheck = value;
      })
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

      retrievingData();


    return internetCheck == false?AdvanceCustomAlertInternet():loading?Loading():Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Palette.darkOrange,
          ),
          onPressed: () {Navigator.of(context).pop();},
        ),

        title: Text("Edit Profile",style: TextStyle(
          color: Colors.black,
          fontSize: 25
        ),),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (OverscrollIndicatorNotification overscrollIndicatorNotification){
              overscrollIndicatorNotification.disallowIndicator();
              return true;
            },
            child: ListView(
              children: [

                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: FadeInImage.assetNetwork(
                            placeholder: 'assets/profileImg.jpg',
                            image: (ImageUrl == null || ImageUrl!.isEmpty) ? _image! : ImageUrl!,
                            fit:BoxFit.cover,) ,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 4,
                                color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10)
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 4,
                                color: Theme.of(context).scaffoldBackgroundColor,
                              ),
                              color: Palette.darkOrange,
                            ),
                            child: GestureDetector(
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                               size: 23,
                              ), onTap: ()=>uploadImage(),
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
              buildTextField("Full Name", "Username", false),
                buildText(),
                buildTextField("Phone Number", "Phone", false),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      ),
                      
                      onPressed: () {Navigator.of(context).pop();},
                      child: Text("CANCEL",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.black)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        var firebaseUser = FirebaseAuth.instance.currentUser;
                        final firestoreInstance = FirebaseFirestore.instance;
                        if(name == null ){name = _name;}
                        if(phoneNo == null){phoneNo = _phone;}
                        firestoreInstance.collection("userInfo")
                        .doc(firebaseUser!.uid)
                        .update({"name": name, "phoneNo":phoneNo, "image":ImageUrl== null?_image:ImageUrl}).then((_) => print("Success"));
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Palette.darkOrange,
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      ),
                      
                      child: Text(
                        "SAVE",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.white),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buildText(){
    return Text(_email!,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
    );
  }

  Widget buildTextField(String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(

      padding: const EdgeInsets.only(bottom: 35.0,top: 35.0),
      child: TextField(
        keyboardType: placeholder=="Username"?TextInputType.name:TextInputType.phone,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),onChanged: (value){
          setState(() {
            if(placeholder=="Username"){
              name = value.trim();
            }
            else{
              String _phoneNo;
              _phoneNo = value.trim();
              phoneNo = int.parse(_phoneNo);
            }
          });
      },
      ),
    );
  }

  void retrievingData(){
    final firestoreInstance = FirebaseFirestore.instance;
    var firebaseUser = FirebaseAuth.instance.currentUser;
    firestoreInstance.collection("userInfo").doc(firebaseUser!.uid).get().then((value){
      setState(() {
        _image = value.data()!["image"];
        _email = value.data()!["email"];
        _name = value.data()!["name"];
        _phone = value.data()!["phoneNo"];
        loading = false;
      });
    });
  }
  uploadImage() async {
    final _storage = FirebaseStorage.instance;
    final _picker = ImagePicker();
    PickedFile image;
    final FirebaseAuth auth= FirebaseAuth.instance;
    final User user = auth.currentUser!;
    final uid = user.uid;
    //Check Permissions
    await Permission.photos.request();

    var permissionStatus = await Permission.photos.status;

    if (permissionStatus.isGranted){

      //Select Image

      XFile? xFile = await _picker.pickImage(source: ImageSource.gallery);
      image = PickedFile(xFile!.path);

      var file = File(image.path);

      if (image != ""){

        //Upload to Firebase

        var snapshot = await _storage.ref()
            .child(uid)
            .putFile(file);

        var downloadUrl = await snapshot.ref.getDownloadURL();

        setState(() {
          ImageUrl = downloadUrl;
        });
      } else {
        print('No Path Received');
      }

    } else {
      print('Grant Permissions and try again');
    }
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
            clipBehavior: Clip.none, alignment: Alignment.topCenter,
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
                            ElevatedButton(onPressed: (){
                              SystemNavigator.pop();
                            },
                              child: Text('Exit',style: TextStyle(color: Palette.darkBlue),),),
                            ElevatedButton(onPressed: ()async{
                              AppSettings.openAppSettings();
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