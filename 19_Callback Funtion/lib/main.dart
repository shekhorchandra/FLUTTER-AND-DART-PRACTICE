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

class MyHomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    var arrColors = [ Colors.brown,
      Colors.purpleAccent,
      Colors.teal,
      Colors.green,
      Colors.redAccent,
      Colors.blue,
      Colors.yellowAccent,
      Colors.orange,
      Colors.black,
      Colors.deepPurple,
      Colors.blueGrey
    ];


    return Scaffold(
        appBar: AppBar(

          title: Text("Custom Widget: "),
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,

        ),

      body:



      );



  }
}