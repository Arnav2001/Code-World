import 'package:code_world/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitWave(
              color: Palette.darkOrange,
              size: 50.0,
            ),
            SizedBox(height: 10,),
            Text('Loading', style: TextStyle(color: Palette.darkOrange),)
          ],
        ),
      ),
    );
  }
}
