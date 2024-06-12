import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'InfoProvider.dart';

class DataSearch extends SearchDelegate<String> {
  String? TopicName;
  bool cross=false;
  final List topics=[
    "Header File",
    "Data type",
    "Variables",
    "Operators",
    "Specifiers",
    "Escape Sequence",
    "Control Statements",
    "Loops",
    "Typecasting",
    "Functions",
    "Array",
    "Pointers",
    "Calling",
    "Typedef",
    "Union",
    "Structure",
    "Singly Linked List",
    "Doubly Linked List",
    "Circular Linked List",
    "Stack",
    "Simple Queue",
    "Circular Queue",
    "Double Ended Queue",
    "Priority Queue",
    "Tree",
    "Graph",
    "Binary Tree",
    "Binary Search Tree",
    "AVL Tree",
    "Threaded Tree",
    "Dynamic Programming",
    "File Handling",
    "Backtracking",
    "Greedy Algorithms",
    "Hashing",
    "Heaps",
  ];
  final recentTopic = [
    "Control Statements",
    "Loops",
    "Typecasting",
    "Functions"
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return[
      IconButton(icon: Icon(Icons.clear), onPressed: (){
        query = "";
        cross = true;
      })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow,
            progress: transitionAnimation),
        onPressed:(){
          close(context,'');
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    final suggestionList = query.isEmpty
        ?recentTopic
        :topics.where((element) => element.startsWith(query)).toList();
    return ListView.builder(itemBuilder: (context,index)=> ListTile(
      onTap:()async{
        showResults(context);
        TopicName= suggestionList[index];
        int indexes = topics.indexOf(TopicName);
        SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString('info', TopicName!);
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> InfoProvider()));
      } ,
      leading: Icon(Icons.code),
      title: RichText(text: TextSpan(
          text: suggestionList[index].substring(0,query.length),
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          children: [TextSpan(
              text: suggestionList[index].substring(query.length),
              style: TextStyle(color: Colors.grey)
          )]
      ),),
    ),
      itemCount: suggestionList.length,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ?recentTopic
        :topics.where((element) => element.startsWith(query)).toList();
    return ListView.builder(itemBuilder: (context,index)=> ListTile(
      onTap:()async{
        showResults(context);
        TopicName= suggestionList[index];
        int indexes = topics.indexOf(TopicName);
        SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString('info', TopicName!);

        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> InfoProvider()));
      } ,
      leading: Icon(Icons.code),
      title: RichText(text: TextSpan(
        text: suggestionList[index].substring(0,query.length),
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        children: [TextSpan(
          text: suggestionList[index].substring(query.length),
          style: TextStyle(color: Colors.grey)
        )]
      ),),
    ),
      itemCount: suggestionList.length,
    );
  }
}