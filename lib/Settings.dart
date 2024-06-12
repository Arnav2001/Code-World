import 'package:flutter/material.dart';
class Setting extends StatefulWidget {

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple, // Set the background color to purple
            ),
        child: Text('Delete Account'),
        onPressed: (){
        },
      ),
    );
  }
}
