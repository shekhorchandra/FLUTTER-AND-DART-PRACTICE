import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, //remove debug tag
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          title: Text("Concept of Warp widget: "),
        ),

        body: Container(
          width: double.infinity,
          height: double.infinity,//full width and height
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.spaceEvenly, // center
            spacing: 11,
            runSpacing: 11,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.deepPurple,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.brown,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.deepPurple,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.brown,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ],
          ),
        )
    );
  }
}
