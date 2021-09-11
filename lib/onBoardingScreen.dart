import 'package:code_world/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPage extends StatelessWidget {
  SharedPrefs()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('inside', true);
  }
  @override
  Widget build(BuildContext context) => SafeArea(
    child: IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Knowledge is power.',
          body: 'First, solve the problem. Then, write the code.',
          image: CircleAvatar(
              backgroundColor: Colors.white,
              child:Image(image: AssetImage('assets/education.png'),width: 200,height: 200,)),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Favourite Topics',
          body: 'Mark favourite topics on one tap',
          image: CircleAvatar(
            backgroundColor: Colors.white,
              child:Image(image: AssetImage('assets/favourite.png'),width: 200,height: 200,)),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Simple UI',
          body: 'For enhanced reading experience',
          image: CircleAvatar(
              backgroundColor: Colors.white,
              child:Image(image: AssetImage('assets/ui.png'),width: 200,height: 200,)),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'The beautiful thing about learning is that nobody can take it away from you.',
          body: 'Start your journey',

          image: CircleAvatar(
            backgroundColor: Colors.white,
              child: Image(image: AssetImage('assets/read.png'),height: 200,width: 200,)),
          decoration: getPageDecoration(),
        ),
      ],
      done: Text('Start', style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () {
        goToHome(context);
        SharedPrefs();
        },
      showSkipButton: true,
      skip: Text('Skip'),
      onSkip: () {goToHome(context);
      SharedPrefs();},
      next: Icon(Icons.arrow_forward),
      dotsDecorator: getDotDecoration(),
      onChange: (index) => print('Page $index selected'),
      globalBackgroundColor: Theme.of(context).primaryColor,
      skipFlex: 0,
      nextFlex: 0,
    ),
  );

  void goToHome(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => LoginPage()),
  );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
    color: Color(0xFFBDBDBD),
    size: Size(10, 10),
    activeSize: Size(22, 10),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  );

  PageDecoration getPageDecoration() => PageDecoration(
    titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    bodyTextStyle: TextStyle(fontSize: 20),
    descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
    imagePadding: EdgeInsets.all(24),
    pageColor: Colors.white,
  );
}
