import 'package:app_settings/app_settings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_world/About.dart';
import 'package:code_world/Favourites.dart';
import 'package:code_world/HardCardWidget.dart';
import 'package:code_world/LoginPage.dart';
import 'package:code_world/MediumCardWidget.dart';
import 'package:code_world/Practice.dart';
import 'package:code_world/Profile.dart';
import 'package:code_world/SearchBar.dart';
import 'package:code_world/loading.dart';
import 'package:code_world/palette.dart';
import 'package:code_world/services/internet_checker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'CardWidget.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
String? _image;
String? _name;
String? _email;
class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  String? name;
  int? phoneNo;

  final colorstheme = Palette.darkBlue;

  TabController? _tabController;
  void showAlertDialog(BuildContext context){
    showDialog(context: context,builder: (BuildContext context)=>AdvanceCustomAlert());
  }
  void showAlertDialogInternet(){
   Future((){
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => AdvanceCustomAlertInternet()));
   });
  }
  bool loading = true;
  bool internetAvailable = false;



  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 0)
      ..addListener(() {});

      InternetChecker().then((value)=>{
        setState(() {
          internetAvailable = value;
        })
      });
    super.initState();

   ;
  }
  @override
  void dispose() {
    super.dispose();
  }

  Icon menuIcon = new Icon(Icons.more_vert,color: Palette.darkBlue,);

  _launchURLBrowser() async {
    const url = 'https://play.google.com/store/apps/details?id=com.me.code_world';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    retrievingData();
      return 
      internetAvailable == false?AdvanceCustomAlertInternet():
      loading? Loading():Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xcc092E34)),

        title: Text('Code World',style: TextStyle(
        color: Colors.black
      ),textAlign: TextAlign.left,),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          GestureDetector(
            onTap: (){showSearch(context: context, delegate: DataSearch());},
              child: Padding(
                padding: const EdgeInsets.only(right:18),
                child: new  Image(image: AssetImage('assets/search.png'),width: 20,height: 20,),
              )),

        ],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 300,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xcc092E34),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: FadeInImage.assetNetwork(
                          placeholder: 'assets/profileImg.jpg',
                          image: _image!,
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
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(_name!,style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                      ),),
                    ),
                    Text(_email!,style: TextStyle(
                        fontSize: 15,
                        color: Colors.white
                    ),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Image(image: AssetImage('assets/coding.png'),width: 30,height: 30,),
              title: Text('Practice'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Practice()));
              },
            ),
            ListTile(
              leading: Image(image: AssetImage('assets/love.png'),width: 30,height: 30,),
              title: Text('Favourite'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FavouritePage()));
              },
            ),
            ListTile(
              leading: Image(image: AssetImage('assets/profile1.png'),width: 30,height: 30,),
              title: Text('Profile'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProfileScreen()));
              },
            ),

            ListTile(
              leading: Image(image: AssetImage('assets/info.png'),width: 30,height: 30,),
              title: Text('About'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> About()));
              },
            ),
            ListTile(
              leading: Image(image: AssetImage('assets/star.png'),width: 30,height: 30,),
              title: Text('Rate Us'),
              onTap: () {
                Navigator.of(context).pop();
                _launchURLBrowser();
              },
            ),
            Divider(color: Colors.black,),
            ListTile(
              leading: Image(image: AssetImage('assets/logout.png'),width: 30,height: 30,),
              title: Text('Log Out'),
              onTap: () {
                Navigator.of(context).pop();
                showAlertDialog(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xcc092E34)),
            child: TabBar(
                isScrollable: true,
                indicatorPadding: EdgeInsets.only(top: 4,bottom: 4),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
            
                tabAlignment: TabAlignment.center,
                labelStyle: TextStyle(fontSize: 20),
                labelPadding:
                EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                indicator: BoxDecoration(
                    color: Palette.darkBlue,
                    borderRadius: BorderRadius.circular(20)),
                controller: _tabController,
                tabs: [
                  Padding(
                    padding: const EdgeInsets.only(left:10.0,right: 10.0),
                    child: Text('Easy'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0,right: 10.0),
                    child: Text('Medium'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0,right: 10.0),
                    child: Text('Hard'),
                  ),
                ]),
          ),
          Expanded(
            child: TabBarView(
                controller: _tabController, children: [
              CardWidget(),
              MediumCardWidget(),
              HardCardWidget(),
            ]),
          )
        ],
      ),
    );
  }
  void retrievingData(){
    final firestoreInstance = FirebaseFirestore.instance;
    var firebaseUser = FirebaseAuth.instance.currentUser;
    firestoreInstance.collection("userInfo").doc(firebaseUser!.uid).get().then((value){
      setState(() {
        loading = false;
        _image = value.data()!["image"];
        _name = value.data()!["name"];
        _email = value.data()!["email"];
      });
    });
  }
}
class AdvanceCustomAlert extends StatelessWidget{
@override
  Widget build(BuildContext context){
  return Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4)
    ),
    child: Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(left:10,top:70,right:10,bottom:10),
            child: Column(
              children: [
                Text('Logout',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                SizedBox(height: 5,),
                Text('Do you want to logout',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                     children:[
                        ElevatedButton(onPressed: (){
                          Navigator.pop(context);
                        },
                    child: Text('NO',style: TextStyle(color: Palette.darkBlue),),),

                       ElevatedButton(onPressed: ()async{
                         SharedPreferences prefs = await SharedPreferences.getInstance();
                         prefs.remove('remember');
                         Navigator.popUntil(context, (route) => route.isFirst);
                         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));

                    },
                    child: Text('YES', style: TextStyle(color: Palette.darkBlue),),),
                     ]),
              ],
            ),
          ),
        ),
        Positioned(child: CircleAvatar(
          backgroundColor: Palette.darkBlue,
          radius: 50,
          child: Icon(Icons.logout,size: 50, color: Colors.white,),
        ),
        top: -50,)
      ],
    ),
  );

}


}
class AdvanceCustomAlertInternet extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.blue,
      height: height,
      width: width,
      alignment: Alignment.center,
      child: Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4)
        ),
        child: Stack(
          clipBehavior: Clip.none, 
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
    );

  }

}

