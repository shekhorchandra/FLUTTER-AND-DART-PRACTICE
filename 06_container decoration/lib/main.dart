import 'package:flutter/material.dart';

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

      body: Container(
        width: double.infinity,
        height: double.infinity,
        //color: Colors.blue.shade50,
        child: Center(
          child: Container(
            width:250,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
                //borderRadius: BorderRadius.circular(21),
                //borderRadius: BorderRadius.only(topLeft: Radius.circular(21), bottomRight: Radius.circular(21)),
              border: Border.all(
                width: 5,
                color: Colors.black
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 21,
                  spreadRadius: 21

                )
              ],
              shape: BoxShape.circle


            ),
          ),
        ),
      ),
    );
  }
}