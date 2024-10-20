import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main (){
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: DashBoardScreen(),

    );
  }
}

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              //width:50,
              height: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              //width:50,
              height: 100,
              color: Colors.orange,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              //width:50,
              height: 100,
              color: Colors.deepPurple,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              //width:50,
              height: 100,
              color: Colors.green,
            ),
          )
        ]
      )
    );
  }
}