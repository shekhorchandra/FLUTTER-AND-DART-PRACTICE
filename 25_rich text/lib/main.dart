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
          title: Text("Rich text "),
        ),

        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey,
          child: Center(
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 21
                ),
                children: <TextSpan>[
                  TextSpan(text: 'Hello', style: TextStyle(
                      color: Colors.red,
                  ) ),
                  TextSpan(text: "World", style: TextStyle(
                    fontSize: 55,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                  )),
                  TextSpan(
                    text: ' welcome to ', style: TextStyle(
                    color: Colors.red,
                  )
                  ),
                  TextSpan(
                    text: 'Flutter',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 64,
                      color: Colors.deepPurple,
                      fontStyle: FontStyle.italic,
                      fontFamily: "Schyler"
                    )
                  )
                ]
              ),
            ),
          ),
        ),
    );
  }
}
