import 'dart:async';
import 'package:app_settings/app_settings.dart';
import 'package:code_world/HomePage.dart';
import 'package:code_world/LoginPage.dart';
import 'package:code_world/palette.dart';
import 'package:code_world/services/googleAds.dart';
import 'package:code_world/services/internet_checker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'onBoardingScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  await Firebase.initializeApp();
  runApp(ProviderScope(
    child: App()
    ));
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  bool isRememberMe = false;
  bool internetCheck = false;
// internet_state.dart


  @override
  void initState() {
    super.initState();
    getData();
  }


  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isRememberMe = prefs.getBool('remember') ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 
      // internetCheck ? AdvanceCustomAlertInternet() : 
      SplashScreen(),
      // InterstitialExample()
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isRememberMe = false;
  bool internetAvailable =false;
  @override
  void initState() {
    super.initState();

    InternetChecker().then((value) => setState(() {
      internetAvailable = value;
    }));

    loadData();
  }
 

  Future<Timer> loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isRememberMe = prefs.getBool('remember') ?? false;
    });
    return Timer(Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool inside = prefs.getBool('inside') ?? false;

    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => isRememberMe
          ? HomePage()
          : (inside ? LoginPage() : OnBoardingPage()),
    ));
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return internetAvailable == true ? Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Palette.lightBlue,
                Palette.lightBlue,
                Palette.darkBlue,
                Palette.darkBlue,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/code.png'),
                height: height / 2,
                width: width / 2,
              ),
              Text(
                'Code World',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Palette.orange,
                  fontSize: 60,
                  shadows: <Shadow>[
                    Shadow(
                      blurRadius: 18,
                      color: Colors.yellow,
                      offset: Offset.fromDirection(90, 2),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ): AdvanceCustomAlertInternet();
  }
}

class AdvanceCustomAlertInternet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.blue,
      height: height,
      width: width,
      alignment: Alignment.center,
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10, top: 70, right: 10, bottom: 10),
                child: Column(
                  children: [
                    Text(
                      'No internet',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "You're not connected to a network",
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            SystemNavigator.pop();
                          },
                          child: Text(
                            'Exit',
                            style: TextStyle(color: Palette.darkBlue),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            AppSettings.openAppSettings();
                          },
                          child: Text(
                            'Open Settings',
                            style: TextStyle(color: Palette.darkBlue),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: CircleAvatar(
                backgroundColor: Palette.darkBlue,
                radius: 50,
                child: Icon(
                  Icons.signal_cellular_connected_no_internet_4_bar,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              top: -50,
            ),
          ],
        ),
      ),
    );
  }
}
