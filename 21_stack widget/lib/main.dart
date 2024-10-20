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
          title: Text("Stack Widgets:"),
        ),

        body: Container(
          width: 400,
          height: 400,
          child: Stack(
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.blueGrey,
            ),

            Positioned(
              left: 21,
              top: 21,
              child: Container(
                width: 300,
                height: 300,
                color: Colors.green,
              ),
            ),

          ],
          ),
        )
    );
  }
}
