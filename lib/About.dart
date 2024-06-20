import 'package:flutter/material.dart';
class About extends StatefulWidget {

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: (){Navigator.pop(context);},
            child: Icon(Icons.arrow_back,color: Colors.black,)),
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        width: width,
        height: height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left:25.0,top: 25),
                  child: Text('Code World',
                    style:TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ) ,),
                ),
              ),
              SizedBox(height: 40,),
              Center(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text('Build to provide basic programming concepts and questions for practice to all the users.',style:
                      TextStyle(
                        letterSpacing: 1,
                        fontSize: 20,
                      ),),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(right:15.0),
                  child: Container(
                    child: Text('Version 4.1.0',
                      textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey
                    ),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
