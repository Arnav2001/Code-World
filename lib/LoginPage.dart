import 'dart:async';

import 'package:animations/animations.dart';
import 'package:code_world/SignIn.dart';
import 'package:code_world/background_painter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Register.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
AnimationController? _controller;
ValueNotifier<bool> showSignInPage = ValueNotifier<bool>(true);
@override
  void initState() {
    _controller = AnimationController(vsync: this,duration: Duration(seconds: 2));
    super.initState();
  }
  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          SizedBox.expand(
            child: CustomPaint(
              painter: BackgroundPainter(
                animation: _controller!.view,
              ),
            ),
          ),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: ValueListenableBuilder<bool>(
                valueListenable: showSignInPage,
                builder: (context, value, child) {
                  return SizedBox.expand(
                    child: PageTransitionSwitcher(
                      reverse: !value,
                      duration: const Duration(milliseconds: 800),
                      transitionBuilder:
                          (child, animation, secondaryAnimation) {
                        return SharedAxisTransition(
                          animation: animation,
                          secondaryAnimation: secondaryAnimation,
                          transitionType: SharedAxisTransitionType.vertical,
                          fillColor: Colors.transparent,
                          child: child,
                        );
                      },
                      child: value
                          ? SignIn(
                        key: const ValueKey('SignIn'),
                        onRegisterClicked: () {
                          showSignInPage.value = false;
                          _controller!.forward();
                        },
                      )
                          : Register(
                        key: const ValueKey('Register'),
                        onSignInPressed: () {
                          showSignInPage.value = true;
                          _controller!.reverse();
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }


}
